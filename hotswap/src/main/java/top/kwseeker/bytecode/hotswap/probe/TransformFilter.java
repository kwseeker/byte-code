package top.kwseeker.bytecode.hotswap.probe;

/**
 * 从配置文件加载过滤规则
 * 可以选择对哪些包、类、方法进行转换，需要剔除包中的哪些类、方法
 * 正选、反选、多层级
 */
public class TransformFilter {

    public static boolean shouldTransform(String className) {
        return false;
    }
}
