package top.kwseeker.bytecode.monitor;

import net.bytebuddy.agent.builder.AgentBuilder;
import net.bytebuddy.dynamic.ClassFileLocator;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.pool.TypePool;
import top.kwseeker.bytecode.monitor.httpclient.HttpClientTransformer;
import top.kwseeker.bytecode.monitor.redis.RedisTransformer;

import java.lang.instrument.Instrumentation;

public class MonitorAgent {

    public static void premain(String arg, Instrumentation instrumentation) {

        ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
        //组合的类文件定位器, 用于查找类文件，多个类文件定位器就依次查找返回第一个
        ClassFileLocator.Compound compound = new ClassFileLocator.Compound(ClassFileLocator.ForClassLoader.of(classLoader),
                ClassFileLocator.ForClassLoader.ofSystemLoader());

        String httpInterceptor = "top.kwseeker.bytecode.monitor.httpclient.HttpClientInterceptor";
        String redisInterceptor = "top.kwseeker.bytecode.monitor.redis.RedisInterceptor";

        //使用类文件定位器创建类型缓存池
        TypePool typePool = TypePool.Default.of(compound);
        new AgentBuilder.Default()
                //.with(DebugListener.DEFAULT)
                //拦截HTTP请求
                .type(ElementMatchers.named("org.apache.http.impl.client.CloseableHttpClient"))
                .transform(new HttpClientTransformer(typePool.describe(httpInterceptor).resolve()))
                //拦截Jedis客户端
                .type(ElementMatchers.named("redis.clients.jedis.Client"))
                .transform(new RedisTransformer(typePool.describe(redisInterceptor).resolve()))
                .installOn(instrumentation);
    }
}
