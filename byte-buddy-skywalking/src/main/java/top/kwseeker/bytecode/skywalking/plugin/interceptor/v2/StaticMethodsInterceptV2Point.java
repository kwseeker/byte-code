package top.kwseeker.bytecode.skywalking.plugin.interceptor.v2;

import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.matcher.ElementMatcher;

public interface StaticMethodsInterceptV2Point {
    /**
     * static methods matcher.
     *
     * @return matcher instance.
     */
    ElementMatcher<MethodDescription> getMethodsMatcher();

    /**
     * @return represents a class name, the class instance must instanceof StaticMethodsAroundInterceptorV2.
     */
    String getMethodsInterceptorV2();

    boolean isOverrideArgs();
}
