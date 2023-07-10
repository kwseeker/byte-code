package top.kwseeker.bytecode.bytebuddy.official.secure;

import java.lang.annotation.*;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Inherited
public @interface Secured {

    String user();
}
