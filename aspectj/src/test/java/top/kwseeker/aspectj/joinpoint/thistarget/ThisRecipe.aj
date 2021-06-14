package top.kwseeker.aspectj.joinpoint.thistarget;

public aspect ThisRecipe {

    //pointcut thisIdentifierPointcut(MyClass1 object) : this(object);

    pointcut thisTypePointcut() : this(MyClass1);

    //before(MyClass1 object) : thisIdentifierPointcut(object) {
    //    System.out.println("-------------- Aspect Advice: this identifier --------------");
    //    System.out.println(thisJoinPoint.toLongString());
    //    System.out.println("Class: " + object.getClass().getName());
    //    System.out.println("--------------------------------------------------");
    //}

    before() : thisTypePointcut() {
        System.out.println("-------------- Aspect Advice: this type --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("--------------------------------------------------");
    }
}
