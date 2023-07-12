package top.kwseeker.bytecode.bytebuddy.other.getparams;

import net.bytebuddy.agent.builder.AgentBuilder;
import net.bytebuddy.asm.Advice;
import net.bytebuddy.matcher.ElementMatchers;

import java.lang.instrument.Instrumentation;

public class ParamAgent {

    public static void premain(String arguments, Instrumentation instrumentation) {

        System.out.println("Agent for get parameters");

        new AgentBuilder.Default()
                .ignore(ElementMatchers.none())
                .type(ElementMatchers.nameContains("Method"))
                .transform((builder, type, classLoader, module, protectionDomain) -> builder
                        .method(ElementMatchers.nameContains("method4"))
                        .intercept(Advice.to(MethodParamInterceptor.class))
                ).installOn(instrumentation);
    }
}
