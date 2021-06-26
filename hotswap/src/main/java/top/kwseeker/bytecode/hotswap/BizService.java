package top.kwseeker.bytecode.hotswap;

public class BizService {

    public String greet() {
        return "Hello World!";
    }

    public String greet(String customerName) {
        return "Welcome! " + customerName + "!";
    }

    //public float getCost(float price, int count) {
    public Float getCost(Float price, Integer count) {
        return price * count;
    }

    public static String getStaticStr(String arg) {
        return "This is a static method! " + arg;
    }
}
