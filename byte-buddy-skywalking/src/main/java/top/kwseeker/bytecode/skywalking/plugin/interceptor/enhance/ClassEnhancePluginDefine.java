package top.kwseeker.bytecode.skywalking.plugin.interceptor.enhance;

import lombok.extern.slf4j.Slf4j;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.implementation.FieldAccessor;
import net.bytebuddy.implementation.MethodDelegation;
import net.bytebuddy.implementation.SuperMethodCall;
import net.bytebuddy.implementation.bind.annotation.Morph;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import top.kwseeker.bytecode.skywalking.plugin.AbstractClassEnhancePluginDefine;
import top.kwseeker.bytecode.skywalking.plugin.EnhanceContext;
import top.kwseeker.bytecode.skywalking.plugin.PluginException;
import top.kwseeker.bytecode.skywalking.plugin.bootstrap.BootstrapInstrumentBoost;
import top.kwseeker.bytecode.skywalking.plugin.interceptor.ConstructorInterceptPoint;
import top.kwseeker.bytecode.skywalking.plugin.interceptor.EnhanceException;
import top.kwseeker.bytecode.skywalking.plugin.interceptor.InstanceMethodsInterceptPoint;
import top.kwseeker.bytecode.skywalking.plugin.interceptor.StaticMethodsInterceptPoint;
import top.kwseeker.bytecode.skywalking.plugin.interceptor.v2.InstanceMethodsInterceptV2Point;
import top.kwseeker.bytecode.skywalking.plugin.interceptor.v2.StaticMethodsInterceptV2Point;
import top.kwseeker.bytecode.skywalking.util.StringUtil;

import static net.bytebuddy.jar.asm.Opcodes.ACC_PRIVATE;
import static net.bytebuddy.jar.asm.Opcodes.ACC_VOLATILE;
import static net.bytebuddy.matcher.ElementMatchers.isStatic;
import static net.bytebuddy.matcher.ElementMatchers.not;

/**
 * This class controls all enhance operations, including enhance constructors, instance methods and static methods. All
 * the enhances base on three types interceptor point: {@link ConstructorInterceptPoint}, {@link
 * InstanceMethodsInterceptPoint} and {@link StaticMethodsInterceptPoint} If plugin is going to enhance constructors,
 * instance methods, or both, {@link ClassEnhancePluginDefine} will add a field of {@link Object} type.
 */
@Slf4j
public abstract class ClassEnhancePluginDefine extends AbstractClassEnhancePluginDefine {

    /**
     * Enhance a class to intercept constructors and class instance methods.
     *
     * @param typeDescription target class description
     * @param newClassBuilder byte-buddy's builder to manipulate class bytecode.
     * @return new byte-buddy's builder for further manipulation.
     */
    @Override
    protected DynamicType.Builder<?> enhanceInstance(TypeDescription typeDescription,
                                                     DynamicType.Builder<?> newClassBuilder,
                                                     ClassLoader classLoader,
                                                     EnhanceContext context) throws PluginException {
        //
        ConstructorInterceptPoint[] constructorInterceptPoints = getConstructorsInterceptPoints();
        //
        InstanceMethodsInterceptPoint[] instanceMethodsInterceptPoints = getInstanceMethodsInterceptPoints();
        String enhanceOriginClassName = typeDescription.getTypeName();
        boolean existedConstructorInterceptPoint = false;
        if (constructorInterceptPoints != null && constructorInterceptPoints.length > 0) {
            existedConstructorInterceptPoint = true;
        }
        boolean existedMethodsInterceptPoints = false;
        if (instanceMethodsInterceptPoints != null && instanceMethodsInterceptPoints.length > 0) {
            existedMethodsInterceptPoints = true;
        }

        /**
         * nothing need to be enhanced in class instance, maybe need enhance static methods.
         */
        if (!existedConstructorInterceptPoint && !existedMethodsInterceptPoints) {
            return newClassBuilder;
        }

        /**
         * Manipulate class source code.<br/>
         *
         * new class need:<br/>
         * 1.Add field, name {@link #CONTEXT_ATTR_NAME}.
         * 2.Add a field accessor for this field.
         *
         * And make sure the source codes manipulation only occurs once.
         *
         */
        if (!typeDescription.isAssignableTo(EnhancedInstance.class)) {
            if (!context.isObjectExtended()) {
                newClassBuilder = newClassBuilder
                        .defineField(CONTEXT_ATTR_NAME, Object.class, ACC_PRIVATE | ACC_VOLATILE)
                        .implement(EnhancedInstance.class)
                        .intercept(FieldAccessor.ofField(CONTEXT_ATTR_NAME));
                context.extendObjectCompleted();
            }
        }

        /**
         * 2. enhance constructors
         */
        if (existedConstructorInterceptPoint) {
            for (ConstructorInterceptPoint constructorInterceptPoint : constructorInterceptPoints) {
                if (isBootstrapInstrumentation()) {
                    newClassBuilder = newClassBuilder.constructor(constructorInterceptPoint.getConstructorMatcher())
                                                     .intercept(SuperMethodCall.INSTANCE.andThen(MethodDelegation.withDefaultConfiguration()
                                                                                                                 .to(BootstrapInstrumentBoost
                                                                                                                     .forInternalDelegateClass(constructorInterceptPoint
                                                                                                                         .getConstructorInterceptor()))));
                } else {
                    newClassBuilder = newClassBuilder.constructor(constructorInterceptPoint.getConstructorMatcher())
                                                     .intercept(SuperMethodCall.INSTANCE.andThen(MethodDelegation.withDefaultConfiguration()
                                                                                                                 .to(new ConstructorInter(constructorInterceptPoint
                                                                                                                     .getConstructorInterceptor(), classLoader))));
                }
            }
        }

        /**
         * 3. enhance instance methods
         */
        if (existedMethodsInterceptPoints) {
            for (InstanceMethodsInterceptPoint instanceMethodsInterceptPoint : instanceMethodsInterceptPoints) {
                String interceptor = instanceMethodsInterceptPoint.getMethodsInterceptor();
                if (StringUtil.isEmpty(interceptor)) {
                    throw new EnhanceException("no InstanceMethodsAroundInterceptor define to enhance class " + enhanceOriginClassName);
                }
                ElementMatcher.Junction<MethodDescription> junction = not(isStatic()).and(instanceMethodsInterceptPoint.getMethodsMatcher());
                if (instanceMethodsInterceptPoint instanceof DeclaredInstanceMethodsInterceptPoint) {
                    junction = junction.and(ElementMatchers.<MethodDescription>isDeclaredBy(typeDescription));
                }
                if (instanceMethodsInterceptPoint.isOverrideArgs()) {
                    if (isBootstrapInstrumentation()) {
                        newClassBuilder = newClassBuilder.method(junction)
                                                         .intercept(MethodDelegation.withDefaultConfiguration()
                                                                                    .withBinders(Morph.Binder.install(OverrideCallable.class))
                                                                                    .to(BootstrapInstrumentBoost.forInternalDelegateClass(interceptor)));
                    } else {
                        newClassBuilder = newClassBuilder.method(junction)
                                                         .intercept(MethodDelegation.withDefaultConfiguration()
                                                                                    .withBinders(Morph.Binder.install(OverrideCallable.class))
                                                                                    .to(new InstMethodsInterWithOverrideArgs(interceptor, classLoader)));
                    }
                } else {
                    if (isBootstrapInstrumentation()) {
                        newClassBuilder = newClassBuilder.method(junction)
                                                         .intercept(MethodDelegation.withDefaultConfiguration()
                                                                                    .to(BootstrapInstrumentBoost.forInternalDelegateClass(interceptor)));
                    } else {
                        newClassBuilder = newClassBuilder.method(junction)
                                                         .intercept(MethodDelegation.withDefaultConfiguration()
                                                                                    .to(new InstMethodsInter(interceptor, classLoader)));
                    }
                }
            }
        }

        return newClassBuilder;
    }

    /**
     * Enhance a class to intercept class static methods.
     *
     * @param typeDescription target class description
     * @param newClassBuilder byte-buddy's builder to manipulate class bytecode.
     * @return new byte-buddy's builder for further manipulation.
     */
    @Override
    protected DynamicType.Builder<?> enhanceClass(TypeDescription typeDescription, DynamicType.Builder<?> newClassBuilder,
        ClassLoader classLoader) throws PluginException {
        StaticMethodsInterceptPoint[] staticMethodsInterceptPoints = getStaticMethodsInterceptPoints();
        String enhanceOriginClassName = typeDescription.getTypeName();
        if (staticMethodsInterceptPoints == null || staticMethodsInterceptPoints.length == 0) {
            return newClassBuilder;
        }

        for (StaticMethodsInterceptPoint staticMethodsInterceptPoint : staticMethodsInterceptPoints) {
            String interceptor = staticMethodsInterceptPoint.getMethodsInterceptor();
            if (StringUtil.isEmpty(interceptor)) {
                throw new EnhanceException("no StaticMethodsAroundInterceptor define to enhance class " + enhanceOriginClassName);
            }

            if (staticMethodsInterceptPoint.isOverrideArgs()) {
                if (isBootstrapInstrumentation()) {
                    newClassBuilder = newClassBuilder.method(isStatic().and(staticMethodsInterceptPoint.getMethodsMatcher()))
                                                     .intercept(MethodDelegation.withDefaultConfiguration()
                                                                                .withBinders(Morph.Binder.install(OverrideCallable.class))
                                                                                .to(BootstrapInstrumentBoost.forInternalDelegateClass(interceptor)));
                } else {
                    newClassBuilder = newClassBuilder.method(isStatic().and(staticMethodsInterceptPoint.getMethodsMatcher()))
                                                     .intercept(MethodDelegation.withDefaultConfiguration()
                                                                                .withBinders(Morph.Binder.install(OverrideCallable.class))
                                                                                .to(new StaticMethodsInterWithOverrideArgs(interceptor)));
                }
            } else {
                if (isBootstrapInstrumentation()) {
                    newClassBuilder = newClassBuilder.method(isStatic().and(staticMethodsInterceptPoint.getMethodsMatcher()))
                                                     .intercept(MethodDelegation.withDefaultConfiguration()
                                                                                .to(BootstrapInstrumentBoost.forInternalDelegateClass(interceptor)));
                } else {
                    newClassBuilder = newClassBuilder.method(isStatic().and(staticMethodsInterceptPoint.getMethodsMatcher()))
                                                     .intercept(MethodDelegation.withDefaultConfiguration()
                                                                                .to(new StaticMethodsInter(interceptor)));
                }
            }

        }

        return newClassBuilder;
    }

    /**
     * @return null, means enhance no v2 instance methods.
     */
    @Override
    public InstanceMethodsInterceptV2Point[] getInstanceMethodsInterceptV2Points() {
        return null;
    }

    /**
     * @return null, means enhance no v2 static methods.
     */
    @Override
    public StaticMethodsInterceptV2Point[] getStaticMethodsInterceptV2Points() {
        return null;
    }

}
