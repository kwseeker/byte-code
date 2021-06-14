package top.kwseeker.aspectj.joinpoint.method;

public class SubMyClass2 extends MyClass2 {

    public SubMyClass2(int sign) {
        super(sign);
    }

    @Override
    public void foo() {
        System.out.println("foo() ...");
        foo(1, "2");
    }

    @Override
    public void foo(int a, String b) {
        System.out.println(String.format("foo(%d, %s) ...", a, b));
    }
}
