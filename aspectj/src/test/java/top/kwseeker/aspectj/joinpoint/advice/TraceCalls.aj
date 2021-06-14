package top.kwseeker.aspectj.joinpoint.advice;

public aspect TraceCalls {

    //pointcut tracedCalls() : call(* *.*(..))
    //    && !within(TraceCalls+)
    //    && !within(CallRecipe+)
    //    && !cflow(adviceexecution());
    //
    //before() : tracedCalls() {
    //    System.out.println("-------------- Aspect Advice: advice --------------");
    //    System.out.println(thisJoinPoint.toLongString());
    //    System.out.println("--------------------------------------------");
    //}
}
