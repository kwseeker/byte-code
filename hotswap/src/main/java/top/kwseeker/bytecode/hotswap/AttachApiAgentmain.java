package top.kwseeker.bytecode.hotswap;

import top.kwseeker.bytecode.hotswap.probe.ProfilingTransformer;

import java.lang.instrument.Instrumentation;

/**
 * 对标 InstrumentPremain 的 premain 方式，这里是 agentmain 方式
 * agentmain 方式只是和 premain 方式在使用上不同，但是方法实现上是一样的
 * premain: 通过 -javaagent:xxx.jar 随 JVM 一起启动；
 * agentmain：先启动目标进程，然后启动一个Attach进程，Attach进程通过 VirtualMachine attach() vm.loadAgent() 在运行时为目标进程提供增强
 */
public class AttachApiAgentmain {

    public static void agentmain(String agentArgs, Instrumentation inst){
        System.out.println("agentmain ...");
        //premain 方式也是注册了Transformer实现
        inst.addTransformer(new ProfilingTransformer());
    }
}
