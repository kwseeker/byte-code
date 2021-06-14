package top.kwseeker.aspectj.joinpoint.scope;

public aspect WithinMethodRecipe {

    /**
     * 捕获方法内所有连接点
     */
    pointcut withinMethod() : withincode(* MyClass1.foo());

    before() : withinMethod() && !within(WithinMethodRecipe+) {
        System.out.println("-------------- Aspect Advice: scope method --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("--------------------------------------------------");
    }
}
