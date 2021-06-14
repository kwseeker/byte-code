package top.kwseeker.aspectj.joinpoint.field;

public class MyClass1 {

    int sign;
    public String name;

    public MyClass1(int sign) {
        this.sign = sign;
    }

    public void foo() {
    }

    public int getSign() {
        return sign;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
