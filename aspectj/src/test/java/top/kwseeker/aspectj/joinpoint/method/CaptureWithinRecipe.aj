package top.kwseeker.aspectj.joinpoint.method;

public aspect CaptureWithinRecipe {

    //TODO ???
    pointcut captureWithin() : within(MyClass2) && call(void setSign(int));

    before() : captureWithin() {
        System.out.println("-------------- Aspect Advice: method --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("-------------------------------------------");
    }
}
