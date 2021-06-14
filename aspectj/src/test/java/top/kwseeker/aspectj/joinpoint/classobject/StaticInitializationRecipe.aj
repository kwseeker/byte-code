package top.kwseeker.aspectj.joinpoint.classobject;

public aspect StaticInitializationRecipe {

    pointcut myClassStaticInitialization() : staticinitialization(MyClass1);

    before() : myClassStaticInitialization() {
        System.out.println("-------------- Aspect Advice: ClassObject --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("------------------------------------------------------");
    }
}
