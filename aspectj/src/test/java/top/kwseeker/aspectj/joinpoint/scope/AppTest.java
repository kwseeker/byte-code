package top.kwseeker.aspectj.joinpoint.scope;

import org.junit.Test;
import top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass2;
import top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass3;

import java.lang.reflect.Field;

public class AppTest {

    /**
     * 1 捕获特定类中所有连接点
     *      -------------- Aspect Advice: scope --------------
     *      staticinitialization(static top.kwseeker.aspectj.joinpoint.scope.MyClass1.<clinit>)
     *      --------------------------------------------------
     *      -------------- Aspect Advice: scope --------------
     *      preinitialization(public top.kwseeker.aspectj.joinpoint.scope.MyClass1(int))
     *      --------------------------------------------------
     *      -------------- Aspect Advice: scope --------------
     *      initialization(public top.kwseeker.aspectj.joinpoint.scope.MyClass1(int))
     *      --------------------------------------------------
     *      -------------- Aspect Advice: scope --------------
     *      execution(public top.kwseeker.aspectj.joinpoint.scope.MyClass1(int))
     *      --------------------------------------------------
     *      -------------- Aspect Advice: scope --------------
     *      set(int top.kwseeker.aspectj.joinpoint.scope.MyClass1.sign)
     *      --------------------------------------------------
     *      -------------- Aspect Advice: scope --------------
     *      execution(public void top.kwseeker.aspectj.joinpoint.scope.MyClass1.setName(java.lang.String))
     *      --------------------------------------------------
     *      -------------- Aspect Advice: scope --------------
     *      set(public java.lang.String top.kwseeker.aspectj.joinpoint.scope.MyClass1.name)
     *      --------------------------------------------------
     *      -------------- Aspect Advice: scope --------------
     *      execution(public java.lang.String top.kwseeker.aspectj.joinpoint.scope.MyClass1.getName())
     *      --------------------------------------------------
     *      -------------- Aspect Advice: scope --------------
     *      get(public java.lang.String top.kwseeker.aspectj.joinpoint.scope.MyClass1.name)
     *      --------------------------------------------------
     * 2 捕获特定包中的所有连接点
     * 3 捕获特定方法内的所有连接点
     */
    @Test
    public void test1() throws NoSuchFieldException, IllegalAccessException {
        MyClass1 myClass1 = new MyClass1(601);

        myClass1.setName("Arvin");
        System.out.println(myClass1.getName());

        myClass1.name = "Lee";
        System.out.println(myClass1.name);

        Field field = MyClass1.class.getField("name");
        System.out.println((String) field.get(myClass1));
    }

    /**
     * -------------- Aspect Advice: scope --------------
     * staticinitialization(static top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass2.<clinit>)
     * --------------------------------------------------
     * -------------- Aspect Advice: scope --------------
     * preinitialization(public top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass2(int))
     * --------------------------------------------------
     * -------------- Aspect Advice: scope --------------
     * initialization(public top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass2(int))
     * --------------------------------------------------
     * -------------- Aspect Advice: scope --------------
     * execution(public top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass2(int))
     * --------------------------------------------------
     * -------------- Aspect Advice: scope --------------
     * set(int top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass2.sign)
     * --------------------------------------------------
     * -------------- Aspect Advice: scope --------------
     * staticinitialization(static top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass3.<clinit>)
     * --------------------------------------------------
     * -------------- Aspect Advice: scope --------------
     * preinitialization(public top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass3(int))
     * --------------------------------------------------
     * -------------- Aspect Advice: scope --------------
     * initialization(public top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass3(int))
     * --------------------------------------------------
     * -------------- Aspect Advice: scope --------------
     * execution(public top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass3(int))
     * --------------------------------------------------
     * -------------- Aspect Advice: scope --------------
     * set(int top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass3.sign)
     * --------------------------------------------------
     * -------------- Aspect Advice: scope --------------
     * execution(public void top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass2.setName(java.lang.String))
     * --------------------------------------------------
     * -------------- Aspect Advice: scope --------------
     * set(public java.lang.String top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass2.name)
     * --------------------------------------------------
     * -------------- Aspect Advice: scope --------------
     * execution(public void top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass3.setName(java.lang.String))
     * --------------------------------------------------
     * -------------- Aspect Advice: scope --------------
     * set(public java.lang.String top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass3.name)
     * --------------------------------------------------
     * -------------- Aspect Advice: scope --------------
     * execution(public java.lang.String top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass2.getName())
     * --------------------------------------------------
     * -------------- Aspect Advice: scope --------------
     * get(public java.lang.String top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass2.name)
     * --------------------------------------------------
     * -------------- Aspect Advice: scope --------------
     * execution(public java.lang.String top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass3.getName())
     * --------------------------------------------------
     * -------------- Aspect Advice: scope --------------
     * get(public java.lang.String top.kwseeker.aspectj.joinpoint.scope.subscope.MyClass3.name)
     * --------------------------------------------------
     * HelloAspectJ
     */
    @Test
    public void test2() {
        MyClass2 myClass2 = new MyClass2(602);
        MyClass3 myClass3 = new MyClass3(603);
        myClass2.setName("Hello");
        myClass3.setName("AspectJ");
        System.out.println(myClass2.getName() + myClass3.getName());
    }

    @Test
    public void test3() {
        MyClass1 myClass1 = new MyClass1(601);

        myClass1.setName("Arvin");
        System.out.println(myClass1.getName());

        myClass1.foo();
    }
}
