package top.kwseeker.bytecode.javassist;

import javassist.*;

import java.io.IOException;

public class ClassGenerator {

    public static CtClass generateClass() throws CannotCompileException, NotFoundException, IOException {
        ClassPool pool = ClassPool.getDefault();

        //定义类路径和名称
        String className = "top.kwseeker.bytecode.javassist.HelloWorld";
        CtClass ctClass = pool.makeClass(className);
        //创建无参构造方法
        CtConstructor ctConstructor = new CtConstructor(new CtClass[]{}, ctClass);
        ctConstructor.setBody("{}");
        ctClass.addConstructor(ctConstructor);
        //添加静态方法
        CtMethod printHelloWorldMethod = new CtMethod(CtClass.voidType, "greet", new CtClass[]{}, ctClass);
        printHelloWorldMethod.setModifiers(Modifier.PUBLIC + Modifier.STATIC);
        printHelloWorldMethod.setBody("{\nSystem.out.println(\"Hello World!\");\n}");
        ctClass.addMethod(printHelloWorldMethod);
        //输出类到文件
        String filePath = ClassGenerator.class.getResource("/").getPath();
        ctClass.writeFile(filePath);

        return ctClass;
    }
}
