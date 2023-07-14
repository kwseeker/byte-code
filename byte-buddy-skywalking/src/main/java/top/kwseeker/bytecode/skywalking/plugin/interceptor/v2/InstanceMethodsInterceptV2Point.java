package top.kwseeker.bytecode.skywalking.plugin.interceptor.v2;

import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.matcher.ElementMatcher;

public interface InstanceMethodsInterceptV2Point {
    /**
     * class instance methods matcher.
     *
     * @return methods matcher
     */
    ElementMatcher<MethodDescription> getMethodsMatcher();

    /**
     * @return represents a class name, the class instance must instanceof InstanceMethodsAroundInterceptorV2.
     */
    String getMethodsInterceptorV2();

    boolean isOverrideArgs();
}
