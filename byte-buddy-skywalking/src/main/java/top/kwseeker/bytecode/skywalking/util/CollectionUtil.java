package top.kwseeker.bytecode.skywalking.util;

import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * Some utility methods for collections. Reinvent the wheels because importing third-party libs just for some methods is
 * not worthwhile in agent side
 *
 * @since 7.0.0
 */
public final class CollectionUtil {

    public static String toString(final Map<String, String[]> map) {
        return map.entrySet()
                  .stream()
                  .map(entry -> entry.getKey() + "=" + Arrays.toString(entry.getValue()))
                  .collect(Collectors.joining("\n"));
    }

    @SuppressWarnings("rawtypes")
    public static boolean isEmpty(Collection collection) {
        return collection == null || collection.isEmpty();
    }
}
