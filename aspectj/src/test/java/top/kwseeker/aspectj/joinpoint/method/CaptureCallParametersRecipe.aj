package top.kwseeker.aspectj.joinpoint.method;

/**
 *　捕获方法上传参示例
 */
public aspect CaptureCallParametersRecipe {

    //把调用void MyClass.foo(int, String)方法时传递的int String参数，分别以（int value, String name）行参的方式传递给通知
    //冒号前后参数名必须相同，切点和通知的参数不需要一致
    pointcut captureCallParameters(int value, String name) : call(void MyClass1.foo(int, String)) && args(value, name);

    before(int value1, String name1) : captureCallParameters(value1, name1) {
        System.out.println("-------------- Aspect Advice: method --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("Captured parameters: value=" + value1+ ", name=" + name1);
        System.out.println("-------------------------------------------");
    }

    after(int value2, String name2) : captureCallParameters(value2, name2) {
        System.out.println("-------------- Aspect Advice: method --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("After: Captured parameters: value=" + value2+ ", name=" + name2);
        System.out.println("-------------------------------------------");
    }

}
