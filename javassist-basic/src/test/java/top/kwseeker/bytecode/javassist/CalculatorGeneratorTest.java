package top.kwseeker.bytecode.javassist;

import javassist.CannotCompileException;
import javassist.NotFoundException;
import org.junit.Test;
import top.kwseeker.bytecode.javassist.util.ClassLoadUtil;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class CalculatorGeneratorTest {

    @Test
    public void testCalculator() throws IOException, CannotCompileException, NotFoundException, IllegalAccessException, InstantiationException, NoSuchMethodException, InvocationTargetException {
        byte[] calculatorBytes = CalculatorGenerator.generateClass();
        Class<?> clazz = ClassLoadUtil.loadClass("top.kwseeker.bytecode.javassist.Calculator", calculatorBytes);
        Object calculator = clazz.newInstance();

        Method calculateCircularArea = clazz.getDeclaredMethod("calculateCircularArea", double.class);
        double area = (double) calculateCircularArea.invoke(calculator, 1.23);
        System.out.println(area);
        //System.out.println(3.14 * 3 * 3);         //3.14是一个无法准确存储的数,为何下面打印出了看上去是精确的值,这行有精度问题,难道只是看上去是精确的? TODO 为何有的精确有的不精确(二进制小数乘法原理)
        //System.out.println(3.14 * 1.23 * 1.23);

        Method calculateSum = clazz.getDeclaredMethod("calculateSum", double.class, double.class);
        Double sum = (Double) calculateSum.invoke(calculator, 1.2, 2.3);
        System.out.println(sum);
    }
}