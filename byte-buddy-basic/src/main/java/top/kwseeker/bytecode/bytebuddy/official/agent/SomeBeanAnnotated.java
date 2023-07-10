package top.kwseeker.bytecode.bytebuddy.official.agent;

@ToString
public class SomeBeanAnnotated {

    private String name = "byte-buddy";
    private Integer age = 8;

    @Override
    public String toString() {
        return "SomeBean{" +
                "name='" + name + '\'' +
                ", age=" + age +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }
}
