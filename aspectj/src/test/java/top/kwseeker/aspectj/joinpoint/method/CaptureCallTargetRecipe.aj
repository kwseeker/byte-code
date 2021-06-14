package top.kwseeker.aspectj.joinpoint.method;

public aspect CaptureCallTargetRecipe {

    pointcut captureCallTarget(MyClass1 obj) : call(void MyClass1.foo(int, String)) && target(obj);

    before(MyClass1 obj) : captureCallTarget(obj) {
        System.out.println("-------------- Aspect Advice: method --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("Captured parameters: obj=" + obj + ", sign=" + obj.getSign());
        System.out.println("-------------------------------------------");
    }
}
