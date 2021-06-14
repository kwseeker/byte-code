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

    /**
     * 1 获取连接点传参
     * 2 获取call target 对象
     */
    @Test
    public void test3() {
        MyClass1 myClass1 = new MyClass1(101);
        myClass1.foo(20, "Alice");
    }

    /**
     * 1 call... target...  与　execute... this...
     * 　调用时每个连接点只可以唯一匹配一个target对象；执行时每个连接点只可以唯一匹配一个this对象;
     *   call target 搭配时 target()中必须是实例，而不是类
     *   execute this 搭配时 this()中必须是实例，而不是类
     * 2 call() execute() 切入通知位置对比
     *   call before -> execute before -> execute after -> call after
     * 3 对比 this target 和　within
     *
     */
    @Test
    public void test4() {
        MyClass2 myClass2 = new MyClass2(102);
        myClass2.setSign(1021);
        myClass2.foo(25, "Rose");
    }

    @Test
    public void test5() {
        SubMyClass2 subMyClass2 = new SubMyClass2(102);
        subMyClass2.setSign(1022);
        subMyClass2.foo();
        //MyClass2 myClass2 = new MyClass2(102);
        //myClass2.setSign(1021);
        //myClass2.foo();
    }
}
