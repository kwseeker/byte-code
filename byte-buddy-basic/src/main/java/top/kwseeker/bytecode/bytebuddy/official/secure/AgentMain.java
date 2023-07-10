package top.kwseeker.bytecode.bytebuddy.official.secure;

public class AgentMain {

    /**
     * 添加JVM参数
     * -javaagent:/home/lee/mywork/java/byte-code/byte-buddy-basic/target/byte-buddy-basic-1.0-SNAPSHOT.jar
     */
    public static void main(String[] args) {
        Service service = new Service();
        service.doSensitiveAction();
    }
}
