package top.kwseeker.aspectj.joinpoint.field;

public aspect SetRecipe {

    //这里会破坏字段的私有性,一个属性在类内部修改也会被捕获, 不过可以限制捕获作用范围
    pointcut setNamePointcut(String newValue) : set(String MyClass1.name) && args(newValue);

    before(String newValue) : setNamePointcut(newValue) {
        System.out.println("-------------- Aspect Advice: field --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("set newValue: " + newValue);
        System.out.println("------------------------------------------------------");
    }
}
