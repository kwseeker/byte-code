package top.kwseeker.bytecode.hotswap.probe;

import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import javassist.CannotCompileException;
import javassist.ClassPool;
import javassist.CtClass;
import javassist.NotFoundException;

import java.io.IOException;
import java.lang.instrument.ClassFileTransformer;
import java.lang.instrument.IllegalClassFormatException;
import java.security.ProtectionDomain;

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
        System.out.println(String.format("classLoader=%s, classToRedefinedName=%s, classToRefined=%s",
                classLoader.getClass().getName(), classToRedefinedName, classToRedefined == null ? null : classToRedefined.getName()));

        //是否需要转换
        if (!TransformFilter.shouldTransform(classToRedefinedName)) {
            //return rawClassFileBytes;
            //未执行转换直接返回null即可
            return null;
        }

        //使用ASM、javassist等转换


        return new byte[0];
    }

    //字节码增强
    private byte[] trans(String className, byte[] classFileBuffer) throws NotFoundException, CannotCompileException, IOException {
        ClassPool pool = ClassPool.getDefault();
        CtClass ctClass = pool.get(className.replace('/', '.'));    //transform(...)方法传递的className中包名是以"/"分隔的

        //忽略对 接口、抽象方法、私有方法、Native、桥接方法（常见于类型擦除产生的合成方法）、合成方法（编译器加入到class中的方法） 的插桩

        //忽略对初始化方法插桩

        //忽略对 继承的Object默认方法 的插桩


        //日志插桩


        //输出修改后的class
        String outputFilePath = ClassGenerator.class.getResource("/").getPath();
        ctClass.writeFile(outputFilePath);

        return new byte[0];
    }
}
