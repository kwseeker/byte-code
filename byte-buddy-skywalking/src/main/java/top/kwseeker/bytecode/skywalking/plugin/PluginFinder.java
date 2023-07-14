package top.kwseeker.bytecode.skywalking.plugin;

import net.bytebuddy.description.NamedElement;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import top.kwseeker.bytecode.skywalking.plugin.bytebuddy.AbstractJunction;
import top.kwseeker.bytecode.skywalking.plugin.match.ClassMatch;
import top.kwseeker.bytecode.skywalking.plugin.match.IndirectMatch;
import top.kwseeker.bytecode.skywalking.plugin.match.NameMatch;
import top.kwseeker.bytecode.skywalking.plugin.match.ProtectiveShieldMatcher;

import java.util.*;

public class PluginFinder {

    private final Map<String, LinkedList<AbstractClassEnhancePluginDefine>> nameMatchDefine = new HashMap<>();
    private final List<AbstractClassEnhancePluginDefine> signatureMatchDefine = new ArrayList<>();
    private static boolean IS_PLUGIN_INIT_COMPLETED = false;


    public PluginFinder(List<AbstractClassEnhancePluginDefine> plugins) {
        for (AbstractClassEnhancePluginDefine plugin : plugins) {
            ClassMatch match = plugin.enhanceClass();

            if (match == null) {
                continue;
            }

            if (match instanceof NameMatch) {
                NameMatch nameMatch = (NameMatch) match;
                LinkedList<AbstractClassEnhancePluginDefine> pluginDefines = nameMatchDefine.get(nameMatch.getClassName());
                if (pluginDefines == null) {
                    pluginDefines = new LinkedList<AbstractClassEnhancePluginDefine>();
                    nameMatchDefine.put(nameMatch.getClassName(), pluginDefines);
                }
                pluginDefines.add(plugin);
            } else {
                signatureMatchDefine.add(plugin);
            }

            //if (plugin.isBootstrapInstrumentation()) {
            //    bootstrapClassMatchDefine.add(plugin);
            //}
        }
    }

    public List<AbstractClassEnhancePluginDefine> find(TypeDescription typeDescription) {
        List<AbstractClassEnhancePluginDefine> matchedPlugins = new LinkedList<AbstractClassEnhancePluginDefine>();
        String typeName = typeDescription.getTypeName();
        if (nameMatchDefine.containsKey(typeName)) {
            matchedPlugins.addAll(nameMatchDefine.get(typeName));
        }

        for (AbstractClassEnhancePluginDefine pluginDefine : signatureMatchDefine) {
            IndirectMatch match = (IndirectMatch) pluginDefine.enhanceClass();
            if (match.isMatch(typeDescription)) {
                matchedPlugins.add(pluginDefine);
            }
        }

        return matchedPlugins;
    }

    public ElementMatcher<? super TypeDescription> buildMatch() {
        //Junction 用于创建复合的 ElementMatcher,
        ElementMatcher.Junction<? extends NamedElement> judge = new AbstractJunction<NamedElement>() {
            @Override
            public boolean matches(NamedElement target) {
                return nameMatchDefine.containsKey(target.getActualName());
            }
        };

        judge = judge.and(ElementMatchers.not(ElementMatchers.isInterface()));
        for (AbstractClassEnhancePluginDefine define : signatureMatchDefine) {
            ClassMatch match = define.enhanceClass();
            if (match instanceof IndirectMatch) {
                judge = judge.or(((IndirectMatch) match).buildJunction());
            }
        }
        return new ProtectiveShieldMatcher(judge);
    }


    public static void pluginInitCompleted() {
        IS_PLUGIN_INIT_COMPLETED = true;
    }

    public static boolean isPluginInitCompleted() {
        return IS_PLUGIN_INIT_COMPLETED;
    }
}
