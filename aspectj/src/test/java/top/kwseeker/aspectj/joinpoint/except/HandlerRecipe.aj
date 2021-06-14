package top.kwseeker.aspectj.joinpoint.except;

/**
 * 异常发生时捕获对应连接点异常
 */
public aspect HandlerRecipe {

    //MyException catch() 块作为连接点
    //pointcut myExceptionHandlerPointCut() : handler(MyException);
    pointcut myExceptionHandlerPointCutWithArgs(MyException exception) : handler(MyException) && args(exception);
    //捕获发生异常的对象
    //pointcut myExceptionHandlerThis(MyClass1 myClass1) : handler(MyException) && this(myClass1);
    //这种写法只有在MyClass1中的 MyException catch()块才会作为连接点
    pointcut myExceptionHandlerThis(MyClass1 myClass1) : handler(MyException) && this(myClass1);

    //before() : myExceptionHandlerPointCut() {
    before(MyException exception) : myExceptionHandlerPointCutWithArgs(exception) {
        System.out.println("-------------- Aspect Advice: Exception --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("捕获的异常: e=" + exception.getMessage());
        System.out.println("------------------------------------------------------");
    }

    before(MyClass1 myClass) : myExceptionHandlerThis(myClass) {
        System.out.println("-------------- Aspect Advice: Exception --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("异常对象: myClass=" + myClass.getSign());
        System.out.println("------------------------------------------------------");
    }
}
