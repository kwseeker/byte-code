package top.kwseeker.bytecode.bytebuddy.other.addfield;

import net.bytebuddy.asm.Advice;

/**
 * In this class we set the bool and word values after the constructor
 */
public class SetField {

    //被拦截的方法退出后执行
    @Advice.OnMethodExit
    public static void setValues(@Advice.FieldValue(value = "bool", readOnly = false) boolean bool,
                                 @Advice.FieldValue(value = "word", readOnly = false) String word) {
        System.out.println("Adding boolean (true) and String (New String Field) Fields ");
        bool = true;
        word = "New String Field";
    }
}