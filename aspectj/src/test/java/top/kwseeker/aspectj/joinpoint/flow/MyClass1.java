package top.kwseeker.aspectj.joinpoint.flow;

public class MyClass1 {

    int sign;
    public String name;

    public MyClass1(int sign) {
        this.sign = sign;
    }

    public void foo() {
        System.out.println("foo() ...");
        MyClass1 temp = new MyClass1(7011);
        bar();
    }

    public void bar() {
        System.out.println("bar() ...");
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
