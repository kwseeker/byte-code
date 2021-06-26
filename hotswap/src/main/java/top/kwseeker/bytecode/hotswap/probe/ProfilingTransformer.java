package top.kwseeker.bytecode.hotswap.probe;

import javassist.*;
import javassist.bytecode.AccessFlag;
import javassist.bytecode.CodeAttribute;
import javassist.bytecode.LocalVariableAttribute;
import javassist.bytecode.MethodInfo;

import java.io.IOException;
import java.lang.instrument.ClassFileTransformer;
import java.lang.instrument.IllegalClassFormatException;
import java.security.ProtectionDomain;
import java.util.ArrayList;
import java.util.List;

/**
 * 注册之后，每次定义新类和重定义类时都将调用该转换器
 * https://docs.oracle.com/javase/8/docs/api/java/lang/instrument/ClassFileTransformer.html
 */
public class ProfilingTransformer implements ClassFileTransformer {

    /**
     * 类修改、增强的转换逻辑
     * @param classLoader           定义要转换的类加载器；如果是引导加载器，则为 null
     * @param classToRedefinedName  待重定义的类名, 完全限定类内部形式的类名称和 The Java Virtual Machine Specification 中定义的接口名称。例如，"java/util/List"
     * @param classToRedefined      如果是被重定义或重转换触发，则为重定义或重转换的类；如果是类加载，则为 null
     * @param protectionDomain      要定义或重定义的类的保护域
     * @param rawClassFileBytes     原class字节数组
     * @return                      一个格式良好的类文件缓冲区（转换的结果），如果未执行转换,则返回 null。
     * @throws IllegalClassFormatException  转换格式异常
     */
    @Override
    public byte[] transform(ClassLoader classLoader, String classToRedefinedName, Class<?> classToRedefined, ProtectionDomain protectionDomain,
                            byte[] rawClassFileBytes) throws IllegalClassFormatException {
        //System.out.println(String.format("classLoader=%s, classToRedefinedName=%s, classToRefined=%s",
        //        classLoader.getClass().getName(), classToRedefinedName, classToRedefined == null ? null : classToRedefined.getName()));

        //是否需要转换
        if (!TransformFilter.shouldTransform(classToRedefinedName)) {
            //return rawClassFileBytes;
            //未执行转换直接返回null即可
            return null;
        }

        //使用ASM、javassist等转换
        return trans(classToRedefinedName, rawClassFileBytes);
    }

    //字节码增强
    private byte[] trans(String className, byte[] classFileBuffer) {
        System.out.println("do trans ...");
        try {
            ClassPool pool = ClassPool.getDefault();
            CtClass ctClass = pool.get(className.replace('/', '.'));    //transform(...)方法传递的className中包名是以"/"分隔的

            CtMethod[] ctMethods = ctClass.getDeclaredMethods();
            for (CtMethod ctMethod : ctMethods) {
                MethodInfo methodInfo = ctMethod.getMethodInfo();

                //忽略对 接口、抽象方法、私有方法、Native、桥接方法（常见于类型擦除产生的合成方法）、合成方法（编译器加入到class中的方法） 的插桩
                //忽略对初始化方法插桩
                //忽略对 继承的Object默认方法 的插桩
                int accessFlag = methodInfo.getAccessFlags();
                if ((accessFlag & (AccessFlag.INTERFACE
                        | AccessFlag.ABSTRACT
                        | AccessFlag.PRIVATE
                        | AccessFlag.NATIVE
                        | AccessFlag.BRIDGE
                        | AccessFlag.SYNTHETIC)) != 0) {
                    continue;
                }

                //日志插桩
                //1)方法入参信息: 入参类型,入参名称
                CtClass[] parameterTypes = ctMethod.getParameterTypes();
                CodeAttribute codeAttribute = methodInfo.getCodeAttribute();
                LocalVariableAttribute attr = (LocalVariableAttribute) codeAttribute.getAttribute(LocalVariableAttribute.tag);
                boolean isStatic = (methodInfo.getAccessFlags() & AccessFlag.STATIC) != 0;  // 判断是否为静态方法
                int parameterSize = isStatic ? attr.tableLength() : attr.tableLength() - 1;
                List<String> parameterNameList = new ArrayList<>(parameterSize);            // 入参名称
                List<String> parameterTypeList = new ArrayList<>(parameterSize);            // 入参类型
                StringBuilder parameters = new StringBuilder();                             // 参数组装；$1、$2...，$$可以获取全部，但是不能放到数组初始化
                for (int i = 0; i < parameterSize; i++) {
                    parameterNameList.add(attr.variableName(i + (isStatic ? 0 : 1))); // 静态类型去掉第一个this参数
                    parameterTypeList.add(parameterTypes[i].getName());
                    if (i + 1 == parameterSize) {
                        parameters.append("$").append(i + 1);
                    } else {
                        parameters.append("$").append(i + 1).append(",");
                    }
                }
                //2)方法出参信息
                CtClass returnType = ctMethod.getReturnType();
                String returnTypeName = returnType.getName();

                int methodIdx = MonitorAspect.generateMethodId(className, methodInfo.getName(), parameterNameList, parameterTypeList, returnTypeName);
                ctMethod.addLocalVariable("startMillis", CtClass.longType);
                ctMethod.addLocalVariable("parameterValues", pool.get(Object[].class.getName()));
                // 方法内前加强
                ctMethod.insertBefore("{ startMillis = System.currentTimeMillis(); parameterValues = new Object[]{}; }");     //new Object[]{}; 这么写有什么问题?javassist编译报错
                //ctMethod.insertBefore("{ startMillis = System.currentTimeMillis(); parameterValues = new Object[]{"
                //        + ("".equals(parameters.toString()) ? "\"\"" : parameters.toString()) + "}; }");
                // 方法内后加强
                // 如果返回类型非对象类型，$_ 需要进行类型转换
                ctMethod.insertAfter("{ top.kwseeker.bytecode.hotswap.probe.MonitorAspect.point(" + methodIdx + ", startMillis, parameterValues, $_);}", false);
            }

            //输出修改后的class
            //String outputFilePath = getClass().getResource("/").getPath();
            //System.out.println(outputFilePath);
            //ctClass.writeFile(outputFilePath);
            ctClass.writeFile("./test");

            return ctClass.toBytecode();
        } catch (NotFoundException | CannotCompileException | IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}
