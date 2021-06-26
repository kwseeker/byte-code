package top.kwseeker.bytecode.hotswap.probe;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/**
 * 从配置文件加载过滤规则
 * 可以选择对哪些包、类、方法进行转换，需要剔除包中的哪些类、方法
 * 正选、反选、多层级, 如果需要做复杂的化,可以参考AspectJ对连接点的匹配规则
 */
public class TransformFilter {

    private static final Set<String> redefinedClassPatterns = new HashSet<>();
    private static final Set<String> redefinedMethodPatterns = new HashSet<>();

    static {
        // 待优化
        redefinedClassPatterns.add("top/kwseeker/bytecode/hotswap/BizService");
        redefinedMethodPatterns.add("greet");
        redefinedMethodPatterns.add("getCost");
        redefinedMethodPatterns.add("getStaticStr");
    }

    public static boolean shouldTransform(String className) {
        Objects.requireNonNull(className);
        for (String redefinedClassPattern : redefinedClassPatterns) {
            if (className.startsWith(redefinedClassPattern)) {
                return true;
            }
        }
        return false;
    }

    public static boolean shouldEnhance(String methodName) {
        Objects.requireNonNull(methodName);
        return redefinedMethodPatterns.contains(methodName);
    }
}
