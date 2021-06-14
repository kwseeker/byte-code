package top.kwseeker.aspectj.joinpoint.thistarget;

public aspect TargetRecipe {

    pointcut targetIdentifier(MyClass1 object) : target(object);

    before(MyClass1 object) : targetIdentifier(object) && !within(TargetRecipe+) {
        System.out.println("-------------- Aspect Advice: target identifier --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("--------------------------------------------------");
    }

    pointcut targetType() : target(MyClass1);
    before() : targetType() && !within(TargetRecipe+) {
        System.out.println("-------------- Aspect Advice: target type --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("--------------------------------------------------");
    }
}
