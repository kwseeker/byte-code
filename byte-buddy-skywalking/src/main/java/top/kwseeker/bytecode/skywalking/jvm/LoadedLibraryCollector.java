package top.kwseeker.bytecode.skywalking.jvm;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import lombok.extern.slf4j.Slf4j;
import top.kwseeker.bytecode.skywalking.common.v3.KeyStringValuePair;
import top.kwseeker.bytecode.skywalking.util.CollectionUtil;

import java.io.File;
import java.lang.management.ManagementFactory;
import java.net.URL;
import java.net.URLClassLoader;
import java.text.SimpleDateFormat;
import java.util.*;

@Slf4j
public class LoadedLibraryCollector {

    private static final  String JAR_SEPARATOR = "!";
    private static final Set<ClassLoader> CURRENT_URL_CLASSLOADER_SET = new HashSet<>();
    private static final Gson GSON = new GsonBuilder().disableHtmlEscaping().create();

    /**
     * Prevent OOM in special scenes
     */
    private static final int CURRENT_URL_CLASSLOADER_SET_MAX_SIZE = 50;

    public static void registerURLClassLoader(ClassLoader classLoader) {
        if (CURRENT_URL_CLASSLOADER_SET.size() < CURRENT_URL_CLASSLOADER_SET_MAX_SIZE &&
                classLoader instanceof URLClassLoader) {
            CURRENT_URL_CLASSLOADER_SET.add(classLoader);
        }
    }

    /**
     * Build the required JVM information to add to the instance properties
     */
    public static List<KeyStringValuePair> buildJVMInfo() {
        List<KeyStringValuePair> jvmInfo = new ArrayList<>();
        jvmInfo.add(KeyStringValuePair.newBuilder().setKey("Start Time").setValue(getVmStartTime()).build());
        jvmInfo.add(KeyStringValuePair.newBuilder().setKey("JVM Arguments").setValue(GSON.toJson(getVmArgs())).build());
        List<String> libJarNames = getLibJarNames();
        jvmInfo.add(KeyStringValuePair.newBuilder().setKey("Jar Dependencies").setValue(GSON.toJson(libJarNames)).build());
        return jvmInfo;
    }

    private static String getVmStartTime() {
        long startTime = ManagementFactory.getRuntimeMXBean().getStartTime();
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(startTime));
    }

    private static List<String> getVmArgs() {
        List<String> vmArgs = ManagementFactory.getRuntimeMXBean().getInputArguments();
        List<String> sortedVmArgs = new ArrayList<>(vmArgs);
        Collections.sort(sortedVmArgs);
        return sortedVmArgs;
    }

    private static List<String> getLibJarNames() {
        List<URL> classLoaderUrls = loadClassLoaderUrls();
        return extractLibJarNamesFromURLs(classLoaderUrls);
    }

    private static List<URL> loadClassLoaderUrls() {
        List<URL> classLoaderUrls = new ArrayList<>();
        for (ClassLoader classLoader : CURRENT_URL_CLASSLOADER_SET) {
            try {
                URLClassLoader webappClassLoader = (URLClassLoader) classLoader;
                URL[] urls = webappClassLoader.getURLs();
                classLoaderUrls.addAll(Arrays.asList(urls));
            } catch (Exception e) {
                log.warn("Load classloader urls exception: {}", e.getMessage());
            }
        }
        return classLoaderUrls;
    }

    private static List<String> extractLibJarNamesFromURLs(List<URL> urls) {
        Set<String> libJarNames = new HashSet<>();
        for (URL url : urls) {
            try {
                String libJarName = extractLibJarName(url);
                if (libJarName.endsWith(".jar")) {
                    libJarNames.add(libJarName);
                }
            } catch (Exception e) {
                log.warn("Extracting library name exception: {}", e.getMessage());
            }
        }
        List<String> sortedLibJarNames = new ArrayList<>(libJarNames.size());
        if (!CollectionUtil.isEmpty(libJarNames)) {
            sortedLibJarNames.addAll(libJarNames);
            Collections.sort(sortedLibJarNames);
        }
        return sortedLibJarNames;
    }

    private static String extractLibJarName(URL url) {
        String protocol = url.getProtocol();
        if (protocol.equals("file")) {
            return extractNameFromFile(url.toString());
        } else if (protocol.equals("jar")) {
            return extractNameFromJar(url.toString());
        } else {
            return "";
        }
    }

    private static String extractNameFromFile(String fileUri) {
        int lastIndexOfSeparator = fileUri.lastIndexOf(File.separator);
        if (lastIndexOfSeparator < 0) {
            return fileUri;
        } else {
            return fileUri.substring(lastIndexOfSeparator + 1);
        }
    }

    private static String extractNameFromJar(String jarUri) {
        String uri = jarUri.substring(0, jarUri.lastIndexOf(JAR_SEPARATOR));
        return extractNameFromFile(uri);
    }
}
