package top.kwseeker.bytecode.monitor.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import top.kwseeker.bytecode.monitor.context.UserContext;

@Configuration
public class WebConfig {

    @Bean
    public UserContext userContext() {
        return new UserContext();
    }
}
