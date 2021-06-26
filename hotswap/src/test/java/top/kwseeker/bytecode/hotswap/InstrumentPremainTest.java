package top.kwseeker.bytecode.hotswap;

public class InstrumentPremainTest {

    public static void main(String[] args) {
        BizService bizService = new BizService();
        System.out.println(bizService.greet());
        System.out.println(bizService.greet("Lee"));
        System.out.println(bizService.getCost(3.5F, 2));
        System.out.println(BizService.getStaticStr("test"));
    }
}
