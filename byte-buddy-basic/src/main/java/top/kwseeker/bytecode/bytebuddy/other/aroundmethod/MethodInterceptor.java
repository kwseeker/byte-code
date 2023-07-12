package top.kwseeker.bytecode.bytebuddy.other.aroundmethod;

import net.bytebuddy.asm.Advice;

public class MethodInterceptor {

    @Advice.OnMethodEnter
    static long enterMethods() {

        return System.currentTimeMillis();
    }

    @Advice.OnMethodExit
    static void exitMethods(@Advice.Origin String method, @Advice.Enter long start) {
        long end = System.currentTimeMillis();
        System.out.println("This is Method : " + method + "took " + (end-start) + " milliseconds ");
    }
}