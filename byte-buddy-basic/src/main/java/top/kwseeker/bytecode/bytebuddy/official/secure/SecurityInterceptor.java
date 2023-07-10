package top.kwseeker.bytecode.bytebuddy.official.secure;

import net.bytebuddy.implementation.bind.annotation.AllArguments;
import net.bytebuddy.implementation.bind.annotation.Origin;
import net.bytebuddy.implementation.bind.annotation.RuntimeType;

import java.lang.reflect.Method;

public class SecurityInterceptor {

    @RuntimeType    //终止严格类型检查以支持运行时类型转换
    public void intercept(@AllArguments Object[] allArguments, @Origin Method method) {
        if (!method.getAnnotation(Secured.class).user().equals(getUserRole())) {
            throw new IllegalStateException("Wrong user");
        }
        System.out.println("pass security check method:" + method.getName());
    }

    private String getUserRole() {
        //模拟从数据库或上下文获取用户角色
        return System.currentTimeMillis() % 2 == 0 ? "ADMIN" : "GUEST";
    }
}