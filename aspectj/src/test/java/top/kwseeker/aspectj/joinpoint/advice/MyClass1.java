package top.kwseeker.aspectj.joinpoint.advice;

public class MyClass1 {

    int sign;

    public MyClass1(int sign) {
        this.sign = sign;
    }

    public void foo() {
    }

    public int getSign() {
        return sign;
    }
}
