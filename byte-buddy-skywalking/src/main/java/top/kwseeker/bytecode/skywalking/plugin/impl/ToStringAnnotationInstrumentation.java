package top.kwseeker.bytecode.skywalking.plugin.impl;

import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.DynamicType;
import top.kwseeker.bytecode.skywalking.plugin.EnhanceContext;
import top.kwseeker.bytecode.skywalking.plugin.PluginException;
import top.kwseeker.bytecode.skywalking.plugin.interceptor.ConstructorInterceptPoint;
import top.kwseeker.bytecode.skywalking.plugin.interceptor.InstanceMethodsInterceptPoint;
import top.kwseeker.bytecode.skywalking.plugin.interceptor.enhance.ClassInstanceMethodsEnhancePluginDefine;
import top.kwseeker.bytecode.skywalking.plugin.match.ClassMatch;

public class ToStringAnnotationInstrumentation extends ClassInstanceMethodsEnhancePluginDefine {

    public static final String ENHANCE_ANNOTATION = "org.springframework.web.bind.annotation.RestController";

    @Override
    protected String[] getEnhanceAnnotations() {
        return new String[] {ENHANCE_ANNOTATION};
    }

    @Override
    protected DynamicType.Builder<?> enhanceInstance(TypeDescription typeDescription, DynamicType.Builder<?> newClassBuilder, ClassLoader classLoader, EnhanceContext context) throws PluginException {
        return null;
    }

    @Override
    protected ClassMatch enhanceClass() {
        return null;
    }

    @Override
    public ConstructorInterceptPoint[] getConstructorsInterceptPoints() {
        return new ConstructorInterceptPoint[0];
    }

    @Override
    public InstanceMethodsInterceptPoint[] getInstanceMethodsInterceptPoints() {
        return new InstanceMethodsInterceptPoint[0];
    }
}
