package top.kwseeker.aspectj.joinpoint.except;

import org.junit.Test;

public class AppTest {

    /**
     * 获取异常处理连接点catch()中发生的异常
     * 获取异常处理连接点catch()异常的this对象
     */
    @Test
    public void test1() {
        try {
            MyClass1 myClass1 = new MyClass1(201);
            myClass1.foo();
        } catch (MyException e) {
            e.printStackTrace();
        }
        MyClass1 myClass11 = new MyClass1(2011);
        myClass11.bar();
        MyClass1 myClass12 = new MyClass1(2012);
        myClass12.bar();

        MyClass2 myClass2 = new MyClass2(2021);
        myClass2.bar();
    }
}
