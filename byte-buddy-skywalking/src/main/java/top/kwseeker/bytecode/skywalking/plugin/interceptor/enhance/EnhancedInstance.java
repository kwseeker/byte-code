package top.kwseeker.bytecode.skywalking.plugin.interceptor.enhance;

public interface EnhancedInstance {

    Object getSkyWalkingDynamicField();

    void setSkyWalkingDynamicField(Object value);
}
