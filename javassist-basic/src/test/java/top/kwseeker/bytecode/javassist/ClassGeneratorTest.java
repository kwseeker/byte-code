package top.kwseeker.bytecode.javassist;

import javassist.CannotCompileException;
import javassist.CtClass;
import javassist.NotFoundException;
import org.junit.Test;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ClassGeneratorTest {

    @Test
    public void testGenerateClassAndInvoke() throws IOException, CannotCompileException, NotFoundException, IllegalAccessException, InstantiationException, NoSuchMethodException, InvocationTargetException {
        CtClass ctClass = ClassGenerator.generateClass();
        Class<?> clazz = ctClass.toClass();
        Object helloWorld = clazz.newInstance();
        Method greet = clazz.getDeclaredMethod("greet");
        greet.invoke(helloWorld);
    }
}