package top.kwseeker.aspectj.joinpoint.method;

public class BClass implements AInterface {

    @Override
    public void foo() {
        System.out.println("foo() in BClass ...");
    }
}
