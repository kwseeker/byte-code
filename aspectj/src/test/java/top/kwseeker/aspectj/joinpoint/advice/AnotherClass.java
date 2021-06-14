package top.kwseeker.aspectj.joinpoint.advice;

public class AnotherClass {

    public void foo() {
        System.out.println("AnotherClass.foo() ...");
        this.bar();
    }

    public void bar() {
        System.out.println("AnotherClass.bar() ...");
    }
}
