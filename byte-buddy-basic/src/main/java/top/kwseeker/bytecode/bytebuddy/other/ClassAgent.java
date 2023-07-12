package top.kwseeker.bytecode.bytebuddy.other;

import net.bytebuddy.agent.builder.AgentBuilder;
import net.bytebuddy.asm.Advice;
import net.bytebuddy.description.modifier.Visibility;
import net.bytebuddy.implementation.MethodCall;
import net.bytebuddy.implementation.MethodDelegation;
import net.bytebuddy.implementation.SuperMethodCall;
import net.bytebuddy.matcher.ElementMatchers;
import top.kwseeker.bytecode.bytebuddy.other.addfield.SetField;
import top.kwseeker.bytecode.bytebuddy.other.addmethod.AddMethod;

import java.lang.instrument.Instrumentation;

public class ClassAgent {

    public static void premain(String arguments, Instrumentation instrumentation) {
        System.out.println("Agent for add fields ");

        new AgentBuilder.Default()
                .with(new AgentBuilder.InitializationStrategy.SelfInjection.Eager())
                //匹配名字中包含Method的类
                .type((ElementMatchers.nameContains("Method")))
                .transform((builder, typeDescription, classLoader, module, protectionDomain) -> builder
                        //增加一个Boolean类型的字段bool
                        .defineField("bool", Boolean.class)
                        .defineField("word", String.class)
                        //拦截构造方法, 在构造方法后添加赋值逻辑
                        .constructor(ElementMatchers.any())
                            .intercept(Advice.to(SetField.class))
                        //拦截方法名包含method2的方法
                        //.method(ElementMatchers.nameContains("method2"))  //多次拦截会被最后一次覆盖
                        //    .intercept(Advice.to(GetField.class))
                        //增加一个无返回值的public方法method3
                        .defineMethod("method3", void.class, Visibility.PUBLIC)
                            .intercept(MethodDelegation.to(AddMethod.class))
                        //拦截方法名包含method2的方法在其后面调用method3
                        .method(ElementMatchers.nameContains("method2"))
                            .intercept(SuperMethodCall.INSTANCE
                                    .andThen(MethodCall.invoke(ElementMatchers.nameContains("method3"))))
                ).installOn(instrumentation);
    }
}
