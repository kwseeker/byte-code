package top.kwseeker.bytecode.skywalking;

import lombok.extern.slf4j.Slf4j;
import net.bytebuddy.ByteBuddy;
import net.bytebuddy.agent.builder.AgentBuilder;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.dynamic.scaffold.TypeValidation;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.JavaModule;
import top.kwseeker.bytecode.skywalking.jvm.LoadedLibraryCollector;
import top.kwseeker.bytecode.skywalking.plugin.AbstractClassEnhancePluginDefine;
import top.kwseeker.bytecode.skywalking.plugin.EnhanceContext;
import top.kwseeker.bytecode.skywalking.plugin.InstrumentDebuggingClass;
import top.kwseeker.bytecode.skywalking.plugin.PluginFinder;

import java.lang.instrument.Instrumentation;
import java.security.ProtectionDomain;
import java.util.Collections;
import java.util.List;
import java.util.Map;

@Slf4j
public class SkyWalkingAgent {

    public static void premain(String agentArgs, Instrumentation instrumentation) {
        ByteBuddy byteBuddy = new ByteBuddy().with(TypeValidation.DISABLED);
        AgentBuilder agentBuilder = new AgentBuilder.Default(byteBuddy).ignore(
                ElementMatchers.nameStartsWith("net.bytebuddy.")
                        .or( ElementMatchers.nameStartsWith("org.slf4j."))
                        .or( ElementMatchers.nameStartsWith("top.kwseeker.bytecode.skywalking.ignore.")));

        PluginFinder pluginFinder = new PluginFinder();

        agentBuilder.type(pluginFinder.buildMatch())                        //适配
                .transform(new Transformer(pluginFinder))                   //字节码修改
                .with(AgentBuilder.RedefinitionStrategy.RETRANSFORMATION)
                .with(new RedefinitionListener())
                .with(new Listener())
                .installOn(instrumentation);

    }

    private static class Transformer implements AgentBuilder.Transformer {

        private PluginFinder pluginFinder;

        public Transformer(PluginFinder pluginFinder) {
            this.pluginFinder = pluginFinder;
        }

        /**
         * 字节码修改
         */
        @Override
        public DynamicType.Builder<?> transform(DynamicType.Builder<?> builder,
                                                TypeDescription typeDescription,
                                                ClassLoader classLoader,
                                                JavaModule module,
                                                ProtectionDomain protectionDomain) {
            LoadedLibraryCollector.registerURLClassLoader(classLoader);
            List<AbstractClassEnhancePluginDefine> pluginDefines = pluginFinder.find(typeDescription);
            if (pluginDefines.size() > 0) {
                DynamicType.Builder<?> newBuilder = builder;
                EnhanceContext context = new EnhanceContext();
                for (AbstractClassEnhancePluginDefine define : pluginDefines) {
                    DynamicType.Builder<?> possibleNewBuilder = define.define(
                            typeDescription, newBuilder, classLoader, context);
                    if (possibleNewBuilder != null) {
                        newBuilder = possibleNewBuilder;
                    }
                }
                if (context.isEnhanced()) {
                    log.debug("Finish the prepare stage for {}.", typeDescription.getName());
                }

                return newBuilder;
            }

            log.debug("Matched class {}, but ignore by finding mechanism.", typeDescription.getTypeName());
            return builder;
        }
    }

    private static class RedefinitionListener implements AgentBuilder.RedefinitionStrategy.Listener {

        @Override
        public void onBatch(int index, List<Class<?>> batch, List<Class<?>> types) {
            /* do nothing */
        }

        @Override
        public Iterable<? extends List<Class<?>>> onError(int index,
                                                          List<Class<?>> batch,
                                                          Throwable throwable,
                                                          List<Class<?>> types) {
            //LOGGER.error(throwable, "index={}, batch={}, types={}", index, batch, types);
            log.error( "index={}, batch={}, types={}", index, batch, types, throwable);

            return Collections.emptyList();
        }

        @Override
        public void onComplete(int amount, List<Class<?>> types, Map<List<Class<?>>, Throwable> failures) {
            /* do nothing */
        }
    }

    private static class Listener implements AgentBuilder.Listener {
        @Override
        public void onDiscovery(String typeName, ClassLoader classLoader, JavaModule module, boolean loaded) {

        }

        @Override
        public void onTransformation(final TypeDescription typeDescription,
                                     final ClassLoader classLoader,
                                     final JavaModule module,
                                     final boolean loaded,
                                     final DynamicType dynamicType) {
            //if (LOGGER.isDebugEnable()) {
            //    LOGGER.debug("On Transformation class {}.", typeDescription.getName());
            //}
            log.debug("On Transformation class {}.", typeDescription.getName());

            InstrumentDebuggingClass.INSTANCE.log(dynamicType);
        }

        @Override
        public void onIgnored(final TypeDescription typeDescription,
                              final ClassLoader classLoader,
                              final JavaModule module,
                              final boolean loaded) {
        }

        @Override
        public void onError(final String typeName,
                            final ClassLoader classLoader,
                            final JavaModule module,
                            final boolean loaded,
                            final Throwable throwable) {
            //LOGGER.error("Enhance class " + typeName + " error.", throwable);
            log.error("Enhance class " + typeName + " error.", throwable);
        }

        @Override
        public void onComplete(String typeName, ClassLoader classLoader, JavaModule module, boolean loaded) {
        }
    }
}
