package top.kwseeker.aspectj.pointcut;

public aspect A {
    pointcut fooPC(): execution(void CFlowTest.foo());
    pointcut gooPC(): execution(void CFlowTest.goo());
    pointcut printPC(): call(void java.io.PrintStream.println(String));

    before(): cflow(fooPC()) && cflow(gooPC()) && printPC() && !within(A) {
        System.out.println("should occur");
    }

    before(): cflow(fooPC() && gooPC()) && printPC() && !within(A) {
        System.out.println("should not occur");
    }
}
