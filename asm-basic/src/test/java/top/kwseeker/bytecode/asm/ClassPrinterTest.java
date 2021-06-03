package top.kwseeker.bytecode.asm;

import org.objectweb.asm.ClassReader;
import org.junit.Test;

import java.io.IOException;

public class ClassPrinterTest {

    @Test
    public void testAOP() throws IOException {
        ClassPrinter cp = new ClassPrinter();
        cp.testAopMethod();
    }

    @Test
    public void testPrintClass() throws IOException {
        ClassPrinter cp = new ClassPrinter();
        ClassReader cr = new ClassReader("java.lang.Runnable");
        //accept的方法会读取类的所有的数据，然后将各个类型数据交给ClassVisitor实例各个访问方法
        //如：visit() visitSource() 等等
        cr.accept(cp, 0);

    }
}