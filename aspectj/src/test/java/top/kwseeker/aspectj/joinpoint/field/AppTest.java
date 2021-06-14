package top.kwseeker.aspectj.joinpoint.field;

import org.junit.Test;

import java.lang.reflect.Field;

public class AppTest {

    /**
     * 1 get() 读取对象属性时拦截
     *   支持拦截下面读取属性的方式(貌似不支持捕获通过反射取值)
     *      1.1 调用getter方法
     *      1.2 直接通过"."获取属性
     *   不支持获取静态属性
     * 2 set() 修改对象属性时拦截
     *      1.1 调用setter方法
     *      1.2 直接通过"."设置属性
     */
    @Test
    public void test1() throws NoSuchFieldException, IllegalAccessException {
        MyClass1 myClass1 = new MyClass1(501);

        myClass1.setName("Arvin");
        System.out.println(myClass1.getName());

        myClass1.name = "Lee";
        System.out.println(myClass1.name);

        Field field = MyClass1.class.getField("name");
        System.out.println((String) field.get(myClass1));
    }
}
