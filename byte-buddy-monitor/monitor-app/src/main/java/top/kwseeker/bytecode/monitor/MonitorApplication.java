package top.kwseeker.bytecode.monitor;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

/**
 * -javaagent:/home/lee/mywork/java/byte-code/byte-buddy-monitor/monitor-agent/target/monitor-agent-1.0-SNAPSHOT.jar
 */
@EnableScheduling
@SpringBootApplication
public class MonitorApplication {

    public static void main(String[] args) {
        SpringApplication.run(MonitorApplication.class, args);
    }
}
