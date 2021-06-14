package top.kwseeker.aspectj.joinpoint.flow;

public aspect CFlowRecipe {

    /**
     * 捕获调用MyClass1.foo()的控制流中所有连接点
     */
    pointcut callFoo() : call(void MyClass1.foo());

    //pointcut cflowCallFoo() : cflow(callFoo());
    pointcut cflowbelowCallFoo() : cflowbelow(callFoo());

    //before() : cflowCallFoo() && !within(CFlowRecipe+) {
    //    System.out.println("-------------- Aspect Advice: flow --------------");
    //    System.out.println(thisJoinPoint.toLongString());
    //    System.out.println("------------------------------------------------------");
    //}

    before() : cflowbelowCallFoo() && !within(CFlowRecipe+) {
        System.out.println("-------------- Aspect Advice: flow below --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("------------------------------------------------------");
    }
}
