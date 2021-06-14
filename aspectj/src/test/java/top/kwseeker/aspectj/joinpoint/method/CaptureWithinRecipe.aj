package top.kwseeker.aspectj.joinpoint.method;

public aspect CaptureWithinRecipe {

    pointcut captureWithin() : within(MyClass2) && call(void setSign(int));
    //在MyClass2中调用void foo(int, String)
    pointcut captureWithinFoo() : within(MyClass2) && call(void foo(int, String));

    before() : captureWithin() {
        System.out.println("-------------- Aspect Advice: method within --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("-------------------------------------------");
    }

    before() : captureWithinFoo() {
        System.out.println("-------------- Aspect Advice: method 继承--------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("-------------------------------------------");
    }
}
