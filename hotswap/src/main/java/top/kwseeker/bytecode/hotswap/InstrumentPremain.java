package top.kwseeker.bytecode.hotswap;

import top.kwseeker.bytecode.hotswap.probe.ProfilingTransformer;

import java.lang.instrument.Instrumentation;

/**
 * 通过　JavaAgent　JVMTI(JVM Tool Interface) Instrument 实现JVM启动前方法探针插桩
 */
public class InstrumentPremain {

    //JVM首先会尝试执行此方法，没有实现此方法的话，尝试执行下面的方法
    public static void premain(String agentArgs, Instrumentation inst) {
        //添加类转换器(里面定义对哪些类进行修改),现在只有一种ClassFileTransformer
        inst.addTransformer(new ProfilingTransformer());
    }

    public static void premain(String agentArgs) {
    }
}
