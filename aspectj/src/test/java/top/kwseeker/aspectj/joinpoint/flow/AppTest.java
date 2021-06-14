package top.kwseeker.aspectj.joinpoint.flow;

import org.junit.Test;

public class AppTest {

    /**
     * 1 cflow()
     *      -------------- Aspect Advice: flow --------------
     *      call(public void top.kwseeker.aspectj.joinpoint.flow.MyClass1.foo())
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow --------------
     *      execution(public void top.kwseeker.aspectj.joinpoint.flow.MyClass1.foo())
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow --------------
     *      get(public static final java.io.PrintStream java.lang.System.out)
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow --------------
     *      call(public void java.io.PrintStream.println(java.lang.String))
     *      ------------------------------------------------------
     *      foo() ...
     *      -------------- Aspect Advice: flow --------------
     *      call(public top.kwseeker.aspectj.joinpoint.flow.MyClass1(int))
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow --------------
     *      preinitialization(public top.kwseeker.aspectj.joinpoint.flow.MyClass1(int))
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow --------------
     *      initialization(public top.kwseeker.aspectj.joinpoint.flow.MyClass1(int))
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow --------------
     *      execution(public top.kwseeker.aspectj.joinpoint.flow.MyClass1(int))
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow --------------
     *      set(int top.kwseeker.aspectj.joinpoint.flow.MyClass1.sign)
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow --------------
     *      call(public void top.kwseeker.aspectj.joinpoint.flow.MyClass1.bar())
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow --------------
     *      execution(public void top.kwseeker.aspectj.joinpoint.flow.MyClass1.bar())
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow --------------
     *      get(public static final java.io.PrintStream java.lang.System.out)
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow --------------
     *      call(public void java.io.PrintStream.println(java.lang.String))
     *      ------------------------------------------------------
     *      bar() ...
     * 2 cflowbelow() 相比 cflow 不包含初始连接点, 这里就是指调用 MyClass1.foo() 连接点
     *      -------------- Aspect Advice: flow below --------------
     *      execution(public void top.kwseeker.aspectj.joinpoint.flow.MyClass1.foo())
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow below --------------
     *      get(public static final java.io.PrintStream java.lang.System.out)
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow below --------------
     *      call(public void java.io.PrintStream.println(java.lang.String))
     *      ------------------------------------------------------
     *      foo() ...
     *      -------------- Aspect Advice: flow below --------------
     *      call(public top.kwseeker.aspectj.joinpoint.flow.MyClass1(int))
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow below --------------
     *      preinitialization(public top.kwseeker.aspectj.joinpoint.flow.MyClass1(int))
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow below --------------
     *      initialization(public top.kwseeker.aspectj.joinpoint.flow.MyClass1(int))
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow below --------------
     *      execution(public top.kwseeker.aspectj.joinpoint.flow.MyClass1(int))
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow below --------------
     *      set(int top.kwseeker.aspectj.joinpoint.flow.MyClass1.sign)
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow below --------------
     *      call(public void top.kwseeker.aspectj.joinpoint.flow.MyClass1.bar())
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow below --------------
     *      execution(public void top.kwseeker.aspectj.joinpoint.flow.MyClass1.bar())
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow below --------------
     *      get(public static final java.io.PrintStream java.lang.System.out)
     *      ------------------------------------------------------
     *      -------------- Aspect Advice: flow below --------------
     *      call(public void java.io.PrintStream.println(java.lang.String))
     *      ------------------------------------------------------
     *      bar() ...
     */
    @Test
    public void test1() {
        MyClass1 myClass1 = new MyClass1(701);
        myClass1.foo();
    }
}
