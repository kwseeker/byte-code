package top.kwseeker.bytecode.bytebuddy.official.agent;

import net.bytebuddy.agent.builder.AgentBuilder;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.implementation.FixedValue;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.JavaModule;

import java.lang.instrument.Instrumentation;
import java.security.ProtectionDomain;

import static net.bytebuddy.matcher.ElementMatchers.named;

/**
 * 对 @ToSting 注解的类的 toString 方法进行修改：总是返回固定的值 transformed
 */
public class BeanToStringAgent {

    public static void premain(String arguments, Instrumentation instrumentation) {
        new AgentBuilder.Default()
                .type(ElementMatchers.isAnnotatedWith(ToString.class))
                .transform(new AgentBuilder.Transformer() {
                    @Override
                    public DynamicType.Builder<?> transform(DynamicType.Builder<?> builder,
                                                            TypeDescription typeDescription,
                                                            ClassLoader classLoader,
                                                            JavaModule module,
                                                            ProtectionDomain protectionDomain) {
                        return builder
                                .method(named("toString"))
                                .intercept(FixedValue.value("transformed"));
                    }
                }).installOn(instrumentation);
    }
}
