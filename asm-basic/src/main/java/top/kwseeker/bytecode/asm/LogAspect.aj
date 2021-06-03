package top.kwseeker.bytecode.asm;

public aspect LogAspect {

    pointcut logPointcut() : call(void top.kwseeker.bytecode.asm.ClassPrinter.visit(int, int, String, String, String, String[]));
    pointcut logPointcut1() : call(void top.kwseeker.bytecode.asm.ClassPrinter.testAopMethod());

    before() : logPointcut() {
        System.out.println("before ...");
    }

    before() : logPointcut1() {
        System.out.println("before ...");
    }
}
