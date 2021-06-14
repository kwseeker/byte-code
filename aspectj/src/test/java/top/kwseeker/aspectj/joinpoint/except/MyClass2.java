package top.kwseeker.aspectj.joinpoint.except;

public class MyClass2 {

    int sign;

    public MyClass2(int sign) {
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
