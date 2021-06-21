package top.kwseeker.bytecode.javassist.util;

public class ClassLoadUtil {

    public static Class<?> loadClass(String name, byte[] bytes) {
        return MyClassLoader.getInstance().defineClass(name, bytes);
    }

    static class MyClassLoader extends ClassLoader {

        private static final MyClassLoader myClassLoader = new MyClassLoader();

        public static MyClassLoader getInstance() {
            return myClassLoader;
        }

        public Class<?> defineClass(String name, byte[] b) {
            return super.defineClass(name, b, 0, b.length);
        }
    }
}
