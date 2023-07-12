package top.kwseeker.bytecode.bytebuddy.other.aroundmethod;

import net.bytebuddy.agent.builder.AgentBuilder;
import net.bytebuddy.asm.Advice;
import net.bytebuddy.matcher.ElementMatchers;

import java.lang.instrument.Instrumentation;

public class AroundMethodAgent {

    public static void premain(String arguments, Instrumentation instrumentation) {
        System.out.println("Agent for instrument of constructor");

        new AgentBuilder.Default()
                .with(new AgentBuilder.InitializationStrategy.SelfInjection.Eager())
                .type((ElementMatchers.any()))
                .transform((builder, typeDescription, classLoader, module, protectionDomain) -> builder
                        .constructor(ElementMatchers.any())
                            .intercept(Advice.to(ConstructorInterceptor.class))
                        .method(ElementMatchers.any())
                            .intercept(Advice.to(MethodInterceptor.class))
                ).installOn(instrumentation);
    }
}
