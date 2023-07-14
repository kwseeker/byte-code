package top.kwseeker.bytecode.skywalking.plugin.interceptor.enhance;

import top.kwseeker.bytecode.skywalking.plugin.interceptor.StaticMethodsInterceptPoint;

/**
 * Plugins, which only need enhance class instance methods. Actually, inherit from {@link
 * ClassInstanceMethodsEnhancePluginDefine} has no differences with inherit from {@link ClassEnhancePluginDefine}. Just
 * override {@link ClassEnhancePluginDefine#getStaticMethodsInterceptPoints}, and return NULL, which means nothing to
 * enhance.
 */
public abstract class ClassInstanceMethodsEnhancePluginDefine extends ClassEnhancePluginDefine {

    /**
     * @return null, means enhance no static methods.
     */
    @Override
    public StaticMethodsInterceptPoint[] getStaticMethodsInterceptPoints() {
        return null;
    }

}
