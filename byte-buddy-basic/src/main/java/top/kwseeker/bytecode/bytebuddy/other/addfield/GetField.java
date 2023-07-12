package top.kwseeker.bytecode.bytebuddy.other.addfield;

import net.bytebuddy.asm.Advice;

/**
 * In this class we get the bool and word values before method2 execute
 * method2 should be non-static method.
 */
public class GetField {

    //被拦截的方法执行前执行
    @Advice.OnMethodEnter
    public static void getValues(@Advice.FieldValue(value = "bool") boolean bool,
                                 @Advice.FieldValue(value = "word") String word) {
        System.out.println("Getting New Fields");
        System.out.println("boolean value is " + bool + " and String value is " + word);
    }
}