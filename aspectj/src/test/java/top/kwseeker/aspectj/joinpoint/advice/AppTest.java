package top.kwseeker.aspectj.joinpoint.advice;

import org.junit.Test;

public class AppTest {

    @Test
    public void test1() {
        MyClass1 myClass1 = new MyClass1(301);
        myClass1.foo();
    }
}
