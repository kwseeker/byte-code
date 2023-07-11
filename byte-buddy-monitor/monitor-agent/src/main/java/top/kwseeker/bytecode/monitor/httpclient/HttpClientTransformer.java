package top.kwseeker.bytecode.monitor.httpclient;

import net.bytebuddy.agent.builder.AgentBuilder;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.implementation.MethodDelegation;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.JavaModule;

import java.security.ProtectionDomain;

public class HttpClientTransformer implements AgentBuilder.Transformer {

    private final TypeDescription delegator;

    public HttpClientTransformer(TypeDescription delegator) {
        this.delegator = delegator;
    }

    @Override
    public DynamicType.Builder<?> transform(DynamicType.Builder<?> builder,
                                            TypeDescription typeDescription,
                                            ClassLoader classLoader,
                                            JavaModule module,
                                            ProtectionDomain protectionDomain) {
        try {
            return builder.method(ElementMatchers.named("execute")
                            .and(ElementMatchers.returns(ElementMatchers.named("org.apache.http.client.methods.CloseableHttpResponse"))))
                            .intercept(MethodDelegation.to(delegator));
        } catch (Exception e) {
            e.printStackTrace();
            return builder;
        }
    }
}
