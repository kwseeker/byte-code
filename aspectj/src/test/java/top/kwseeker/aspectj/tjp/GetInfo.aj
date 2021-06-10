package top.kwseeker.aspectj.tjp;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.reflect.CodeSignature;

public aspect GetInfo {

    static void println(String s) {
        System.out.println(s);
    }

    //在Demo实例中执行void go()的控制流
    pointcut goCut(): cflow(this(Demo) && execution(void go()));
    //执行Demo任何方法
    pointcut demoExecs(): within(Demo) && execution(* *(..));

    //执行Demo类的任何方法 && 非执行* go() && 在Demo实例void go() 控制流中
    //构造方法、静态方法算么？
    //方法嵌套调用呢？
    Object around(): demoExecs() && !execution(* go()) && goCut() {
        println("--------------------------------------");
        println("Intercepted message: " +
                thisJoinPointStaticPart.getSignature().getName());      //方法签名
        println("in class: " +
                thisJoinPointStaticPart.getSignature().getDeclaringType().getName());
        printParameters(thisJoinPoint);
        println("Running original method: \n");
        Object result = proceed();
        println("  result: " + result);
        return result;
    }

    static private void printParameters(JoinPoint jp) {
        println("Arguments: ");
        Object[] args = jp.getArgs();
        String[] names = ((CodeSignature) jp.getSignature()).getParameterNames();
        Class[] types = ((CodeSignature) jp.getSignature()).getParameterTypes();
        for (int i = 0; i < args.length; i++) {
            println("  " + i + ". " + names[i] +
                    " : " + types[i].getName() +
                    " = " + args[i]);
        }
    }
}
