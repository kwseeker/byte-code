package top.kwseeker.bytecode.bytebuddy.official.secure;

public class Service {

    @Secured(user = "ADMIN")
    public void doSensitiveAction() {
        // 运行敏感代码...
        System.out.println("dangerous doSensitiveAction");
    }
}