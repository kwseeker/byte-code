package top.kwseeker.bytecode.skywalking.plugin;

import lombok.extern.slf4j.Slf4j;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.DynamicType;
import top.kwseeker.bytecode.skywalking.plugin.interceptor.ConstructorInterceptPoint;
import top.kwseeker.bytecode.skywalking.plugin.interceptor.InstanceMethodsInterceptPoint;
import top.kwseeker.bytecode.skywalking.plugin.interceptor.StaticMethodsInterceptPoint;
import top.kwseeker.bytecode.skywalking.plugin.interceptor.v2.InstanceMethodsInterceptV2Point;
import top.kwseeker.bytecode.skywalking.plugin.interceptor.v2.StaticMethodsInterceptV2Point;
import top.kwseeker.bytecode.skywalking.plugin.match.ClassMatch;
import top.kwseeker.bytecode.skywalking.util.CollectionUtil;
import top.kwseeker.bytecode.skywalking.util.StringUtil;

import java.util.List;

/**
 * SkyWalking 所有 auto-instrumentation plugins 的基类
 * 提供了增强目标类的大纲
 * <p>
 * It provides the outline of enhancing the target class. If you want to know more about enhancing, you should go to see
 * {@link ClassEnhancePluginDefine}
 */
@Slf4j
public abstract class AbstractClassEnhancePluginDefine {

    /**
     * New field name.
     */
    public static final String CONTEXT_ATTR_NAME = "_$EnhancedClassField_ws";

    /**
     * 类增强的主入口
     *
     * @param typeDescription 目标类型 TypeDescription
     * @param builder         用于修改目标类型的ByteBuddy Builder
     * @param classLoader     用于加载转换类型 Transformer
     * @return the new builder, or <code>null</code> if not be enhanced.
     * @throws PluginException when set builder failure.
     */
    public DynamicType.Builder<?> define(TypeDescription typeDescription,
                                         DynamicType.Builder<?> builder,
                                         ClassLoader classLoader,
                                         EnhanceContext context) throws PluginException {
        //
        String interceptorDefineClassName = this.getClass().getName();
        String transformClassName = typeDescription.getTypeName();
        if (StringUtil.isEmpty(transformClassName)) {
            log.warn("classname of being intercepted is not defined by {}.", interceptorDefineClassName);
            return null;
        }

        log.debug("prepare to enhance class {} by {}.", transformClassName, interceptorDefineClassName);
        WitnessFinder finder = WitnessFinder.INSTANCE;
        /**
         * find witness classes for enhance class
         */
        String[] witnessClasses = witnessClasses();
        if (witnessClasses != null) {
            for (String witnessClass : witnessClasses) {
                if (!finder.exist(witnessClass, classLoader)) {
                    log.warn("enhance class {} by plugin {} is not activated. Witness class {} does not exist.", transformClassName, interceptorDefineClassName, witnessClass);
                    return null;
                }
            }
        }
        List<WitnessMethod> witnessMethods = witnessMethods();
        if (!CollectionUtil.isEmpty(witnessMethods)) {
            for (WitnessMethod witnessMethod : witnessMethods) {
                if (!finder.exist(witnessMethod, classLoader)) {
                    log.warn("enhance class {} by plugin {} is not activated. Witness method {} does not exist.", transformClassName, interceptorDefineClassName, witnessMethod);
                    return null;
                }
            }
        }

        /**
         * find origin class source code for interceptor
         */
        DynamicType.Builder<?> newClassBuilder = this.enhance(typeDescription, builder, classLoader, context);

        context.initializationStageCompleted();
        log.debug("enhance class {} by {} completely.", transformClassName, interceptorDefineClassName);

        return newClassBuilder;
    }


    /**
     * Begin to define how to enhance class. After invoke this method, only means definition is finished.
     *
     * @param typeDescription target class description
     * @param newClassBuilder byte-buddy's builder to manipulate class bytecode.
     * @return new byte-buddy's builder for further manipulation.
     */
    protected DynamicType.Builder<?> enhance(TypeDescription typeDescription, DynamicType.Builder<?> newClassBuilder,
                                             ClassLoader classLoader, EnhanceContext context) throws PluginException {
        newClassBuilder = this.enhanceClass(typeDescription, newClassBuilder, classLoader);

        newClassBuilder = this.enhanceInstance(typeDescription, newClassBuilder, classLoader, context);

        return newClassBuilder;
    }

    /**
     * Enhance a class to intercept constructors and class instance methods.
     *
     * @param typeDescription target class description
     * @param newClassBuilder byte-buddy's builder to manipulate class bytecode.
     * @return new byte-buddy's builder for further manipulation.
     */
    protected abstract DynamicType.Builder<?> enhanceInstance(TypeDescription typeDescription,
                                                              DynamicType.Builder<?> newClassBuilder, ClassLoader classLoader,
                                                              EnhanceContext context) throws PluginException;

    /**
     * 定义拦截静态方法实现增强 （核心方法）
     *
     * @param typeDescription target class description
     * @param newClassBuilder byte-buddy's builder to manipulate class bytecode.
     * @return new byte-buddy's builder for further manipulation.
     */
    protected abstract DynamicType.Builder<?> enhanceClass(TypeDescription typeDescription, DynamicType.Builder<?> newClassBuilder,
                                                           ClassLoader classLoader) throws PluginException;

    /**
     * 定义类匹配器，用于判断是否需要对类进行增强 （核心方法）
     *
     * @return {@link ClassMatch}
     */
    protected abstract ClassMatch enhanceClass();

    /**
     * Witness classname list. Why need witness classname? Let's see like this: A library existed two released versions
     * (like 1.0, 2.0), which include the same target classes, but because of version iterator, they may have the same
     * name, but different methods, or different method arguments list. So, if I want to target the particular version
     * (let's say 1.0 for example), version number is obvious not an option, this is the moment you need "Witness
     * classes". You can add any classes only in this particular release version ( something like class
     * com.company.1.x.A, only in 1.0 ), and you can achieve the goal.
     */
    protected String[] witnessClasses() {
        return new String[] {};
    }

    protected List<WitnessMethod> witnessMethods() {
        return null;
    }

    public boolean isBootstrapInstrumentation() {
        return false;
    }


    /**
     * 构造方法拦截点. See {@link ConstructorInterceptPoint}
     *
     * @return collections of {@link ConstructorInterceptPoint}
     */
    public abstract ConstructorInterceptPoint[] getConstructorsInterceptPoints();

    /**
     * 实例方法拦截点. See {@link InstanceMethodsInterceptPoint}
     *
     * @return collections of {@link InstanceMethodsInterceptPoint}
     */
    public abstract InstanceMethodsInterceptPoint[] getInstanceMethodsInterceptPoints();

    /**
     * 实例方法拦截点. See {@link InstanceMethodsInterceptV2Point}
     *
     * @return collections of {@link InstanceMethodsInterceptV2Point}
     */
    public abstract InstanceMethodsInterceptV2Point[] getInstanceMethodsInterceptV2Points();

    /**
     * 静态方法拦截点. See {@link StaticMethodsInterceptPoint}
     *
     * @return collections of {@link StaticMethodsInterceptPoint}
     */
    public abstract StaticMethodsInterceptPoint[] getStaticMethodsInterceptPoints();

    /**
     * 静态方法拦截点V2
     */
    public abstract StaticMethodsInterceptV2Point[] getStaticMethodsInterceptV2Points();
}
