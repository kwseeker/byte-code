package top.kwseeker.aspectj.joinpoint.thistarget;

import org.junit.Test;

public class AppTest {

    /**
     */
    @Test
    public void test1() {
        MyClass1 myClass1 = new MyClass1(801);
        myClass1.setName("Arvin");
        System.out.println(myClass1.getName());
        myClass1.foo();
    }
}
