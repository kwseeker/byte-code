package top.kwseeker.bytecode.bytebuddy.util;

import net.bytebuddy.dynamic.DynamicType;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Objects;

/**
 * 打印ByteBuddy增强的Class的内容, 主要是借助 DynamicType getBytes() 方法
 * 另外 ByteBuddy 有个 saveIn() 方法
 */
public class ClassPrinterUtil {

    private static final String DELIMITER = "/";
    private static final String TARGET_DIR = "target";
    private static final String CLASS_GENERATED_DIR = "generated-bytebuddy-classes";

    private ClassPrinterUtil() {
    }

    /**
     * 保存到 target/generated-bytebuddy-classes
     */
    public static void saveInFile(DynamicType dynamicType) {
        try {
            dynamicType.saveIn(new File(TARGET_DIR + DELIMITER + CLASS_GENERATED_DIR));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static void save(DynamicType dynamicType) {
        //DynamicType 中的 Type 应该是和 java.lang.reflect.Type 同一个意思，虽然两者没有什么继承关系
        String typeName = dynamicType.getTypeDescription().getName();
        save(typeName, dynamicType.getBytes());
    }

    public static void save(String className, byte[] bytes) {
        //DynamicType 中的 Type 应该是和 java.lang.reflect.Type 同一个意思，虽然两者没有什么继承关系
        String resourcePath = Objects.requireNonNull(ClassPrinterUtil.class.getResource(DELIMITER)).getPath();
        String targetDirPath = resourcePath + CLASS_GENERATED_DIR;
        //判断targetDir目录是否存在不存在则创建
        File targetDir = new File(targetDirPath);
        if (!targetDir.exists() && !targetDir.mkdir()) {
            throw new RuntimeException("create dir failed, dir=" + targetDir.getPath());
        }

        String classPath = targetDirPath + className + ".class";
        try (FileOutputStream out = new FileOutputStream(classPath)) {
            System.out.println("generated class output path: " + classPath);
            out.write(bytes);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
