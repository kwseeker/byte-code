package top.kwseeker.bytecode.javassist;

import javassist.*;

import java.io.IOException;
import java.lang.reflect.Modifier;

/**
 * 属性定义, 方法传参
 */
public class CalculatorGenerator {

    public static byte[] generateClass() throws CannotCompileException, NotFoundException, IOException {
        ClassPool pool = ClassPool.getDefault();
        //类名
        CtClass ctClass = pool.makeClass("top.kwseeker.bytecode.javassist.Calculator");
        //静态属性
        CtField pi = new CtField(CtClass.doubleType, "pi", ctClass);
        pi.setModifiers(Modifier.PRIVATE | Modifier.STATIC | Modifier.FINAL);
        ctClass.addField(pi, "3.14");
        //方法, 传参
        CtMethod calculateCircularArea = new CtMethod(CtClass.doubleType, "calculateCircularArea", new CtClass[]{CtClass.doubleType}, ctClass);
        calculateCircularArea.setModifiers(Modifier.PUBLIC);
        calculateCircularArea.setBody("{return pi * $1 * $1;}");
        ctClass.addMethod(calculateCircularArea);

        CtMethod calculateSum = new CtMethod(pool.get(Double.class.getName()), "calculateSum", new CtClass[]{CtClass.doubleType, CtClass.doubleType}, ctClass);
        calculateSum.setModifiers(Modifier.PUBLIC);
        calculateSum.setBody("{return Double.valueOf($1 + $2);}");
        ctClass.addMethod(calculateSum);

        //输出类到文件
        String filePath = ClassGenerator.class.getResource("/").getPath();
        ctClass.writeFile(filePath);

        return ctClass.toBytecode();
    }
}
