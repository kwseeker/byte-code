package top.kwseeker.bytecode.skywalking.plugin.match;

import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.matcher.ElementMatcher;

/**
 * 所有无法直接通过类名匹配的 Implementation 都通过自定义 isMatch() 方法实现匹配
 */
public interface IndirectMatch extends ClassMatch {
    ElementMatcher.Junction buildJunction();

    boolean isMatch(TypeDescription typeDescription);
}
