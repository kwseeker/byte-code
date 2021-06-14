package top.kwseeker.aspectj.joinpoint.classobject;

import org.junit.Test;

public class AppTest {

    /**
     * 连接点:
     * 1 构造方法调用
     * 2 构造方法执行
     * 3 对象初始化
     * 4 对象初始化之前
     *     call -> preinitialization -> initialization -> execution
     *     public MyClass1(int sign) {
     *         //preinitialization
     *         InitializationRecipe.aspectOf().ajc$before$top_kwseeker_aspectj_joinpoint_classobject_InitializationRecipe$1$1de982ac(ajc$tjp_2);
     *         super();
     *         //initialization
     *         InitializationRecipe.aspectOf().ajc$before$top_kwseeker_aspectj_joinpoint_classobject_InitializationRecipe$1$1de982ac(ajc$tjp_1);
     *         //execution
     *         NewRecipe.aspectOf().ajc$before$top_kwseeker_aspectj_joinpoint_classobject_NewRecipe$1$f3c2d393(ajc$tjp_0);
     *         this.sign = sign;
     *     }
     * 5 类的初始化
     */
    @Test
    public void test1() {
        MyClass1 myClass1 = new MyClass1(401);
    }
}
