package top.kwseeker.aspectj.joinpoint.advice;

public aspect CallRecipe {

    pointcut callPointcut() : call(void MyClass1.foo());

    before() : callPointcut() {
        System.out.println("-------------- Aspect Advice: Advice --------------");
        System.out.println(thisJoinPoint.toLongString());
        AnotherClass anotherClass = new AnotherClass();
        anotherClass.foo();
        System.out.println("------------------------------------------------------");
    }
}
