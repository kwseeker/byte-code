package top.kwseeker.aspectj.joinpoint.method;

public aspect CaptureCallExecuteThisTargetRecipe {

    //call target　
    pointcut captureCallTarget(MyClass2 obj) : call(void MyClass2.foo(int, String)) && target(obj);
    //  call target 搭配时 target()中必须是实例，而不是类
    //pointcut captureCallTarget1() : call(void MyClass2.foo(int, String)) && target(MyClass2);
    //  call this 两者不能搭配使用
    //pointcut captureCallThis(MyClass2 obj) : call(void MyClass2.foo(int, String)) && this(obj);
    //execute this
    pointcut captureExecuteThis(MyClass2 obj) : execution(void MyClass2.foo(int, String)) && this(obj);
    //  execute this 搭配时 this()中必须是实例，而不是类
    //pointcut captureExecuteThis1(MyClass2 obj) : execution(void MyClass2.foo(int, String)) && this(MyClass2);
    //  execute target 两者不能搭配使用
    //pointcut captureExecuteTarget(MyClass2 obj) : execution(void MyClass2.foo(int, String)) && Target(obj);

    pointcut captureCallTargetOrExecuteThis(MyClass2 obj) : captureCallTarget(obj) || captureExecuteThis(obj);

    //before(MyClass2 obj) : captureCallTarget(obj) {
    //before(MyClass2 obj) : captureCallThis(obj) {
    //before(MyClass2 obj) : captureExecuteThis(obj) {
    //before(MyClass2 obj) : captureExecuteTarget(obj) {
    before(MyClass2 obj) : captureCallTargetOrExecuteThis(obj) {
        System.out.println("-------------- Aspect Advice: method --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("Captured parameters: obj=" + obj + ", sign=" + obj.getSign());
        System.out.println("-------------------------------------------");
    }

    after(MyClass2 obj) : captureCallTargetOrExecuteThis(obj) {
        System.out.println("-------------- Aspect Advice: method --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("Captured parameters: obj=" + obj + ", sign=" + obj.getSign());
        System.out.println("-------------------------------------------");
    }

    //before() : captureCallTarget1() {
    //before() : captureExecuteThis1() {
    //    System.out.println("-------------- Aspect Advice: method --------------");
    //    System.out.println(thisJoinPoint.toLongString());
    //    System.out.println("-------------------------------------------");
    //}
}
