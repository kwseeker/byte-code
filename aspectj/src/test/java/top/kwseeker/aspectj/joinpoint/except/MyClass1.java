package top.kwseeker.aspectj.joinpoint.except;

public class MyClass1 {

    int sign;

    public MyClass1(int sign) {
        this.sign = sign;
    }

    public void foo() throws MyException {
        throw new MyException();
    }

    public void bar() {
        try {
            throw new MyException();
        } catch (MyException exception) {
            exception.printStackTrace();
        }
    }

    public int getSign() {
        return sign;
    }
}
