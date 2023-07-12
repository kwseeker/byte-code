package top.kwseeker.bytecode.bytebuddy.other.getparams;

import net.bytebuddy.asm.Advice;

public class MethodParamInterceptor {

    @Advice.OnMethodExit
    public static void getParameters(@Advice.Origin String method, @Advice.AllArguments Object[] params) {
        System.out.println(method);
        for (Object param : params) {
            System.out.println(param.getClass().getName() + ": " + param);
        }
    }
}
