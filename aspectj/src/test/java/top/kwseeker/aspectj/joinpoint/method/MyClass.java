package top.kwseeker.aspectj.joinpoint.method;

public class MyClass {

    public void foo() {
        System.out.println("foo() ...");
        foo(1, "2");
    }

    public void foo(int a, String b) {
        System.out.println(String.format("foo(%d, %s) ...", a, b));
    }
}
