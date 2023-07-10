package top.kwseeker.bytecode.bytebuddy;

import net.bytebuddy.ByteBuddy;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.implementation.FixedValue;
import net.bytebuddy.implementation.MethodDelegation;
import net.bytebuddy.matcher.ElementMatchers;
import org.junit.Assert;
import org.junit.Test;
import top.kwseeker.bytecode.bytebuddy.util.ClassPrinterUtil;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

public class HelloWorldTest {

    /**
     * 创建一个Object的子类，复写toString方法，固定输出"Hello World!"
     */
    @Test
    public void testHelloWorld() throws InstantiationException, IllegalAccessException {
        DynamicType.Unloaded<Object> unloaded = new ByteBuddy()
                .subclass(Object.class)
                .method(ElementMatchers.named("toString"))
                .intercept(FixedValue.value("Hello World!"))
                .make();
        //加载
        Class<?> dynamicType = unloaded.load(getClass().getClassLoader())
                .getLoaded();
        ClassPrinterUtil.saveInFile(unloaded);

        String str = dynamicType.newInstance().toString();
        System.out.println(str);
        Assert.assertEquals("toString method override failed",  "Hello World!", str);
    }

    @Test
    public void testHelloByteBuddy() throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        DynamicType.Unloaded<?> unloaded = new ByteBuddy()
                .subclass(Object.class)
                .name("top.kwseeker.bytecode.bytebuddy.HelloByteBuddy")
                .defineMethod("main", void.class, Modifier.PUBLIC | Modifier.STATIC)
                .withParameters(String[].class).intercept(MethodDelegation.to(HelloMain.class))
                .make();
        Class<?> dynamicType = unloaded.load(getClass().getClassLoader())
                .getLoaded();
        ClassPrinterUtil.saveInFile(unloaded);

        //Main方法也是可以调的
        Method method = dynamicType.getMethod("main", String[].class);
        method.invoke(null, (Object) new String[]{});
    }
}
