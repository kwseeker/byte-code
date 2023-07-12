package top.kwseeker.bytecode.bytebuddy.other;

import top.kwseeker.bytecode.bytebuddy.other.common.Method;

/**
 * 添加JVM参数
 * -javaagent:/home/lee/mywork/java/byte-code/byte-buddy-basic/target/byte-buddy-basic-1.0-SNAPSHOT.jar
 */
public class AgentMain {

    public static void main(String[] args) {

        Method method = new Method();
        method.method1();
        method.method2();
        method.method4(4, "parameters", true);
    }
}
