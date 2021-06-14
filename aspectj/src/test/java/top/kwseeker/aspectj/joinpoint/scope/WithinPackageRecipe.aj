package top.kwseeker.aspectj.joinpoint.scope;

public aspect WithinPackageRecipe {

    pointcut withinPackage() : within(top.kwseeker.aspectj.joinpoint.scope.subscope.*);

    before() : withinPackage() {
        System.out.println("-------------- Aspect Advice: scope --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("--------------------------------------------------");
    }
}
