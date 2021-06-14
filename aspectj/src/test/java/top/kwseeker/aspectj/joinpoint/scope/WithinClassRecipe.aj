package top.kwseeker.aspectj.joinpoint.scope;

public aspect WithinClassRecipe {

    //pointcut withinMyClass() : within(MyClass1);
    //
    //before() : withinMyClass() && !within(WithinClassRecipe+) {
    //    System.out.println("-------------- Aspect Advice: scope --------------");
    //    System.out.println(thisJoinPoint.toLongString());
    //    System.out.println("--------------------------------------------------");
    //}
}
