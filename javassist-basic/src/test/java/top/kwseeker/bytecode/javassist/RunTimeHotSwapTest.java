package top.kwseeker.bytecode.javassist;

import com.sun.jdi.connect.IllegalConnectorArgumentsException;
import javassist.*;
import javassist.util.HotSwapper;
import org.junit.Test;

import java.io.IOException;
import java.lang.management.ManagementFactory;

/**
 * !!!
 * 1 要被重载的进程需要开启JPDA支持加载class java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8000
 * 2 开启JPDA 会影响debug
 */
public class RunTimeHotSwapTest {

    private static final ServerEnv SERVER_ENV = ServerEnv.TEST;

    /**
     * 模拟在测试环境为了测试需要通过HotSwapper改变方法行为
     * HotSwapper
     * A utility class for dynamically reloading a class by the Java Platform Debugger Architecture (JPDA), or HotSwap. It works only with JDK 1.4 and later.
     * http://www.javassist.org/html/javassist/util/HotSwapper.html
     * HotSwap 依赖 debug agent 来执行热插拔，但据报道 debug agent 在大规模多线程环境下有问题。如果遇到问题，请尝试 HotSwapAgent。
     * http://www.javassist.org/html/javassist/util/HotSwapAgent.html
     *
     * 模拟这个是业务进程
     */
    @Test
    public void testRunTimeHotSwap() throws InterruptedException {
        System.out.println(ManagementFactory.getRuntimeMXBean().getName());

        Thread thread = new Thread(() -> {
            try {
                while(true) {
                    System.out.println(PrimaryClass.getSystemTime());
                    Thread.sleep(200);
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        });
        thread.start();

        //这个是成功的
        //Thread.sleep(1000);
        //
        //HotSwapper hotSwapper = new HotSwapper(8000);
        //
        //ClassPool pool = ClassPool.getDefault();
        //CtClass ctClass = pool.get(PrimaryClass.class.getName());
        //if (SERVER_ENV == ServerEnv.TEST) {
        //    CtMethod getSystemTime = ctClass.getDeclaredMethod("getSystemTime");
        //    getSystemTime.setBody("{return 1624191638156L;}");
        //}
        //hotSwapper.reload(PrimaryClass.class.getName(), ctClass.toBytecode());
        //
        //System.out.println("HotSwapper reload done !");
        thread.join(10000);
    }

    /**
     * 模拟这个是热加载进程与业务进程通过8000接口通信
     * TODO reload失败, HotSwapper必须在要被重载的进程中才起作用么? HotSwapper原理是什么(还是要从原理上找原因)?
     */
    @Test
    public void testHotSwapReload() throws InterruptedException, IOException, NotFoundException, CannotCompileException, IllegalConnectorArgumentsException {
        System.out.println(ManagementFactory.getRuntimeMXBean().getName());

        Thread.sleep(1000);

        HotSwapper hotSwapper = new HotSwapper(8000);

        //Class.forName("top.kwseeker.bytecode.javassist.PrimaryClass");
        //System.out.println(PrimaryClass.getSystemTime());

        ClassPool pool = ClassPool.getDefault();
        CtClass ctClass = pool.get(PrimaryClass.class.getName());
        if (SERVER_ENV == ServerEnv.TEST) {
            CtMethod getSystemTime = ctClass.getDeclaredMethod("getSystemTime");
            getSystemTime.setBody("{return 1624191638156L;}");
        }
        hotSwapper.reload(PrimaryClass.class.getName(), ctClass.toBytecode());

        System.out.println("HotSwapper reload done !");
    }

    enum ServerEnv {
        PROD,
        TEST,
        DEV;
    }
}
