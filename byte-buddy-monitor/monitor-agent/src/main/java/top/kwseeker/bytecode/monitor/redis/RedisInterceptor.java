package top.kwseeker.bytecode.monitor.redis;

import net.bytebuddy.implementation.bind.annotation.AllArguments;
import net.bytebuddy.implementation.bind.annotation.SuperCall;
import redis.clients.jedis.Connection;
import top.kwseeker.bytecode.monitor.Trace;
import top.kwseeker.bytecode.monitor.bean.User;
import top.kwseeker.bytecode.monitor.context.ApplicationContextHolder;
import top.kwseeker.bytecode.monitor.context.UserContext;

import java.util.concurrent.Callable;

public class RedisInterceptor {

    public static Connection sendMessage(@SuperCall Callable<Connection> client,
                                         @AllArguments Object[] args) throws Exception {
        UserContext userContext = ApplicationContextHolder.getBean(UserContext.class);
        assert userContext != null;
        User user = userContext.getUser();
        Trace trace = new Trace();
        long start = System.currentTimeMillis();
        try {
            int i = 0;
            for (Object arg : args) {
                System.out.println("redis arg index: " + i++ + ", value is " + arg.toString());
            }

            Connection response = client.call();

            trace.setUrl("local redis");
            trace.setCost(System.currentTimeMillis() - start);
            trace.setStatusCode(200);
            System.out.println("trace is " + trace + ", person is " + user.toString());
            return response;
        } catch (Exception e) {
            trace.setCost(System.currentTimeMillis() - start);
            trace.setE(e);
            trace.setStatusCode(-1);
            System.out.println("exception trace is " + trace + ", person is " + user.toString());
            throw e;
        }
    }
}
