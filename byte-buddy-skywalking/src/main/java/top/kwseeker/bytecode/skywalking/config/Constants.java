package top.kwseeker.bytecode.skywalking.config;

public class Constants {
    public static String PATH_SEPARATOR = System.getProperty("file.separator", "/");

    public static String LINE_SEPARATOR = System.getProperty("line.separator", "\n");

    public static String EMPTY_STRING = "";

    public static char SERVICE_NAME_PART_CONNECTOR = '|';

    // The name of the layer that represents agent-installed services,
    // which is defined at https://github.com/apache/skywalking/blob/85ce1645be53e46286f36c0ea206c60db2d1a716/oap-server/server-core/src/main/java/org/apache/skywalking/oap/server/core/analysis/Layer.java#L30
    public static String EVENT_LAYER_NAME = "GENERAL";

    public static int NULL_VALUE = 0;
}
