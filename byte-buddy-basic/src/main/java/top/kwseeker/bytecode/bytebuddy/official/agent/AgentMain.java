package top.kwseeker.bytecode.bytebuddy.official.agent;

public class AgentMain {

    /**
     * 添加JVM参数
     * -javaagent:/home/lee/mywork/java/byte-code/byte-buddy-basic/target/byte-buddy-basic-1.0-SNAPSHOT.jar
     */
    public static void main(String[] args) {
        SomeBean someBean = new SomeBean();
        SomeBeanAnnotated someBeanAnnotated = new SomeBeanAnnotated();
        System.out.println(someBean);
        System.out.println(someBeanAnnotated);
    }
}
