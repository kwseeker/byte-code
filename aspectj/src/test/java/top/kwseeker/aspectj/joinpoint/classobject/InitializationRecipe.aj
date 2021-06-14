package top.kwseeker.aspectj.joinpoint.classobject;

public aspect InitializationRecipe {

    //此连接点在任何超类初始化之后以及构造函数方法返回值之前
    pointcut myClassInitialization() : initialization(MyClass1.new(int));
    pointcut myClassPreInitialization() : preinitialization(MyClass1.new(int));

    before() : myClassInitialization() || myClassPreInitialization() {
        System.out.println("-------------- Aspect Advice: ClassObject --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("------------------------------------------------------");
    }
}