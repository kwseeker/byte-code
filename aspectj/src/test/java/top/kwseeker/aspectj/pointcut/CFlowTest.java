package top.kwseeker.aspectj.pointcut;

import org.junit.Test;

public class CFlowTest {

    @Test
    public void testFoo() {
        foo();
    }

    void foo() {
        goo();
    }

    void goo() {
        System.out.println("hi");
    }
}
