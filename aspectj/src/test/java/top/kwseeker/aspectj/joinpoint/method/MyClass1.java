package top.kwseeker.aspectj.joinpoint.method;

public class MyClass1 {

    int sign;

    public MyClass1(int sign) {
        this.sign = sign;
    }

    public void foo() {
        System.out.println("foo() ...");
        foo(1, "2");
    }

    public void foo(int a, String b) {
        System.out.println(String.format("foo(%d, %s) ...", a, b));
    }

    public int getSign() {
        return sign;
    }

    public void setSign(int sign) {
        this.sign = sign;
    }
}
