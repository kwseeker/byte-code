package top.kwseeker.aspectj.joinpoint.method;

import com.alibaba.fastjson.JSONObject;

/**
 * aspect中无法调试
 */
public aspect CallRecipe {

    //任何地方调用void MyClass.foo(int, String)会被拦截
    pointcut callPointCut() : call(void MyClass.foo(int, String));

    before() : callPointCut() {
        System.out.println("-------------- Aspect Advice: method --------------");
        //thisJoinPoint是当前连接点定义
        System.out.println("thisJoinPoint: " + JSONObject.toJSONString(thisJoinPoint));
        //thisJoinPointStaticPart是当前连接点的静态部分(如方法定义、类名、源码位置等，对应的参数、实例对象是动态部分)，等同于thisJoinPoint.getStaticPart()
        System.out.println("thisJoinPointStaticPart: " + JSONObject.toJSONString(thisJoinPointStaticPart));
        //TODO ?
        System.out.println("thisEnclosingJoinPointStaticPart: " + JSONObject.toJSONString(thisEnclosingJoinPointStaticPart));
        //当前连接点的方法定义
        System.out.println(thisJoinPoint.toLongString());
        System.out.println(thisJoinPoint.toShortString());
        System.out.println("-------------------------------------------");
    }


    //pointcut fooPointCut() : call(void ParentClass.foo());
    pointcut fooPointCut() : call(void SubClass.foo());
    pointcut fooIPointCut() : call(void AInterface.foo());
    before() : fooPointCut() || fooIPointCut() {
        System.out.println("-------------- Aspect Advice --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("-------------------------------------------");
    }

    pointcut executePointCut() : execution(void SubClass.foo());
    //pointcut executeForcePointCut() : execution(void ParentClass+.foo());
    pointcut executeIPointCut() : execution(void AInterface.foo());
    before() :  executePointCut() || executeIPointCut() {
    //before() :  executeForcePointCut() || executeIPointCut() {
        System.out.println("-------------- Aspect Advice --------------");
        System.out.println(thisJoinPoint.toLongString());
        System.out.println("-------------------------------------------");
    }
}
