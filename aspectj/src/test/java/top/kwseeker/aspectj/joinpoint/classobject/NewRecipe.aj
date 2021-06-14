package top.kwseeker.aspectj.joinpoint.classobject;

public aspect NewRecipe {

    pointcut myClassConstructorCall() : call(top.kwseeker.aspectj.joinpoint.classobject.MyClass1.new(int));
    pointcut myClassConstructorExecution() : execution(top.kwseeker.aspectj.joinpoint.classobject.MyClass1.new(int));

    before() : myClassConstructorCall() || myClassConstructorExecution() {
        System.out.println("-------------- Aspect Advice: ClassObject --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("------------------------------------------------------");
    }
}
