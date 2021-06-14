package top.kwseeker.aspectj.joinpoint.field;

public aspect GetRecipe {

    pointcut getNamePointcut() : get(String MyClass1.name);

    before() : getNamePointcut() {
        System.out.println("-------------- Aspect Advice: field --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("------------------------------------------------------");
    }

    after() returning(String value) : getNamePointcut() {
        System.out.println("-------------- Aspect Advice: field --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("returning value: " + value);
        System.out.println("------------------------------------------------------");
    }
}
