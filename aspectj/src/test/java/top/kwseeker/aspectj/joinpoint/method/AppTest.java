package top.kwseeker.aspectj.joinpoint.method;

import org.junit.Test;

public class AppTest {

    @Test
    public void test1() {
        MyClass myClass = new MyClass();
        myClass.foo();
        myClass.foo(3, "4");
    }

    /**
     * 类继承，对比 call() execution()
     * 验证问题
     * 1 将父类方法设置为切点，子类调用继承的父类方法能否被拦截？子类覆盖父类的方法呢？
     *                  继承          覆写
     *   call():    都会被拦截       都会被拦截（同样实现接口也都会被拦截）
     *   execute(): 都会被拦截       都会被拦截（同样实现接口也都会被拦截）
     * 2 将子类方法设置为切点呢
     *                          继承                                       覆写
     *   call():    父类调用方法不会被拦截，子类调用方法会被拦截　 父类调用方法不会被拦截，子类调用方法会被拦截
     *   execute(): 父类子类都不会被拦截                      父亲执行方法不会被拦截，子类调用方法会被拦截
     */
    @Test
    public void test2() {
        ParentClass parentClass = new ParentClass();
        SubClass subClass = new SubClass();
        parentClass.foo();
        subClass.foo();
        BClass bClass = new BClass();
        bClass.foo();
    }
}
