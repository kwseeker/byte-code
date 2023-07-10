package top.kwseeker.bytecode.monitor;

import net.bytebuddy.agent.builder.AgentBuilder;
import net.bytebuddy.dynamic.ClassFileLocator;

import java.lang.instrument.Instrumentation;

import static net.bytebuddy.matcher.ElementMatchers.named;

public class MonitorAgent {

    public static void premain(String arg, Instrumentation instrumentation) {

        ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
        ClassFileLocator.Compound compound = new ClassFileLocator.Compound(ClassFileLocator.ForClassLoader.of(classLoader),
                ClassFileLocator.ForClassLoader.of());

        String httpInterceptor = "com.dragon.study.bytebuddy.httpclient.HttpClientInterceptor";
        String redisInterceptor = "com.dragon.study.bytebuddy.redis.RedisInterceptor";

        new AgentBuilder.Default()
                .type(ElementMatchers.named("org.apache.http.impl.client.CloseableHttpClient"))
                .transform(new HttpClientTransformer(TypePool.Default.of(compound).describe(httpInterceptor).resolve()))
                .type(ElementMatchers.named("redis.clients.jedis.Client"))
                .transform(new RedisTransformer(TypePool.Default.of(compound).describe(redisInterceptor).resolve()))
                .installOn(instrumentation);
    }
}
