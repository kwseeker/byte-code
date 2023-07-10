package top.kwseeker.bytecode.bytebuddy.official.secure;

import net.bytebuddy.agent.builder.AgentBuilder;
import net.bytebuddy.agent.builder.ResettableClassFileTransformer;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.implementation.MethodDelegation;
import net.bytebuddy.implementation.SuperMethodCall;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.JavaModule;

import java.lang.instrument.Instrumentation;
import java.security.ProtectionDomain;

public class SecurityAgent {

    private static final SecurityInterceptor INTERCEPTOR = new SecurityInterceptor();

    public static void premain(String arg, Instrumentation inst) {
        new AgentBuilder.Default()
        //这里的type是和Class的基类Type类似的意思
                .type(ElementMatchers.any())
                .transform(new AgentBuilder.Transformer() {
                    @Override
                    public DynamicType.Builder<?> transform(DynamicType.Builder<?> builder,
                                                            TypeDescription typeDescription,
                                                            ClassLoader classLoader, JavaModule module,
                                                            ProtectionDomain protectionDomain) {
                        //Secured注解的方法委托给SecurityInterceptor，然后执行原方法
                        return builder.method(ElementMatchers.isAnnotatedWith(Secured.class))
                                .intercept(MethodDelegation.to(INTERCEPTOR)
                                        .andThen(SuperMethodCall.INSTANCE));
                    }
                })
                .with(AgentBuilder.Listener.StreamWriting.toSystemOut())
                .installOn(inst);
    }
}
