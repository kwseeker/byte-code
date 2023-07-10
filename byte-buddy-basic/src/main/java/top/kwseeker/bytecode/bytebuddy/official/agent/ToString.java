package top.kwseeker.bytecode.bytebuddy.official.agent;

import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/**
 * 这个注解只是用于标注哪个Bean需要Agent代理
 */
@Retention(RetentionPolicy.RUNTIME)
@Inherited
public @interface ToString {
}