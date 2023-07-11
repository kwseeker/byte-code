package top.kwseeker.bytecode.monitor.redis;

import net.bytebuddy.agent.builder.AgentBuilder;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.implementation.MethodDelegation;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.JavaModule;

import java.security.ProtectionDomain;

public class RedisTransformer implements AgentBuilder.Transformer {

    private final TypeDescription delegator;

    public RedisTransformer(TypeDescription delegator) {
        this.delegator = delegator;
    }

    @Override
    public DynamicType.Builder<?> transform(DynamicType.Builder<?> builder,
                                            TypeDescription typeDescription,
                                            ClassLoader classLoader,
                                            JavaModule module,
                                            ProtectionDomain protectionDomain) {
        return builder.method(ElementMatchers.named("sendCommand")
                .and(ElementMatchers.returns(ElementMatchers.named("redis.clients.jedis.Connection"))))
                .intercept(MethodDelegation.to(delegator));
    }
}
