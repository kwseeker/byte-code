package top.kwseeker.bytecode.monitor.schedule;

import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import redis.clients.jedis.Jedis;
import top.kwseeker.bytecode.monitor.context.UserContext;
import top.kwseeker.bytecode.monitor.bean.User;

import javax.annotation.Resource;
import java.io.IOException;

@Component
public class ScheduledService {

    @Resource
    private UserContext userContext;

    @Scheduled(fixedDelay = 5000L, initialDelay = 1000L)
    public void httpClientTest() {
        User user = userContext.getUser();
        System.out.println(user.getName() + " calling http client, time is " + System.currentTimeMillis());
        try (CloseableHttpClient client = HttpClients.createDefault()) {
            CloseableHttpResponse response = client.execute(new HttpGet("https://www.baidu.com/"));
            System.out.println(response.getStatusLine());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Scheduled(fixedDelay = 10000L, initialDelay = 3000L)
    public void redisTest() {
        User user = userContext.getUser();
        System.out.println(user.getName() + " calling redis, time is " + System.currentTimeMillis());
        Jedis jedis = new Jedis("127.0.0.1", 6379);
        jedis.set("a", "b");
        String value = jedis.get("a");
        System.out.println("key is a, value is " + value);
        jedis.close();
    }
}
