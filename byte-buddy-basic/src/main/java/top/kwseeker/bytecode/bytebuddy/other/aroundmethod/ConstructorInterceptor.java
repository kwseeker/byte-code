package top.kwseeker.bytecode.bytebuddy.other.aroundmethod;

import net.bytebuddy.asm.Advice;

public class ConstructorInterceptor {

    @Advice.OnMethodEnter
    static long enterConstructor() {
        long start = System.currentTimeMillis();
        return start;
    }

    @Advice.OnMethodExit
    static void exitConstructor(@Advice.Origin String method, @Advice.Enter long start) {
        long end = System.currentTimeMillis();
        System.out.println("This is Constructor :" + method + "took " + (end-start) + " milliseconds ");
    }
}