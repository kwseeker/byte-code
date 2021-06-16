package top.kwseeker.bytecode.javassist;

import javassist.CannotCompileException;
import javassist.CtClass;
import org.junit.Test;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ClassGeneratorTest {

    @Test
    public void testGenerateClassAndInvoke() throws IOException, CannotCompileException, IllegalAccessException, InstantiationException, NoSuchMethodException, InvocationTargetException {
        CtClass ctClass = ClassGenerator.generateClass();
        Class<?> clazz = ctClass.toClass();
        Object helloWorld = clazz.newInstance();
        Method greet = clazz.getDeclaredMethod("greet");
        greet.invoke(helloWorld);
    }

    @Test
    public void testGenerateClassBytesAndInvoke() throws CannotCompileException, IOException, IllegalAccessException, InstantiationException, NoSuchMethodException, InvocationTargetException {
        byte[] bytes = ClassGenerator.generateClassBytes();
        MyClassLoader classLoader = new MyClassLoader();
        Class<?> clazz = classLoader.defineClass("top.kwseeker.bytecode.javassist.HelloWorld", bytes);
        Object helloWorld = clazz.newInstance();
        Method greet = clazz.getDeclaredMethod("greet");
        greet.invoke(helloWorld);
    }

    public static class MyClassLoader extends ClassLoader {
        public Class<?> defineClass(String name, byte[] b) {
            return super.defineClass(name, b, 0, b.length);
        }
    }
}