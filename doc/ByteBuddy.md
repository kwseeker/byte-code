# Byte Buddy

参考：

+ **《Java Interceptor Development with ByteBuddy Fundamental》**（推荐）

  官方文档讲的太随意了基本没什么帮助，还是参考这本书吧，但是书籍也只找到编排错乱的epub文档且没找到书籍案例源码。

+ 官方文档： [Byte Buddy Tutorial CN](https://bytebuddy.net/#/tutorial-cn)

+ 测试代码

  > 找了些测试项目，可以调试下，只不过除了官方仓库其他使用的版本都比较老，需要改下代码。

    + **https://github.com/dragontree101/byte-buddy-agent-example** （基于agent实现对Web一些组件的简单监控，推荐）
    + https://github.com/undergrowthlinear/byte-buddy-test （官方文档案例重现）
    + https://github.com/ShehanPerera/javaagent-bytebuddy （一些额外的使用DEMO, 对应博客[Java Agents with Byte-Buddy](https://medium.com/@shehan.a.perera/java-agents-with-byte-buddy-93185305c9e9)）
    + https://github.com/raphw/byte-buddy （官方仓库）



> 下面是官方文档的一些内容。

## 准备

### 与其他技术对比

### 基准测试



## 类创建

+ 继承类（创建类的子类）

+ 被创建类的命名

+ 类名的命名策略

  > "定义的类名中的包和超类相同的话，直接父类的包私有方法对动态类就是可见的。"
  >
  > 即相当于使用给一个类创建了子类。

+ 自定义类名的命名策略

+ 领域特定语言与不变性

  没看明白什么意思，TODO 测试下。

+ 类型重定义：可以通过添加字段和方法或者替换已存在的方法实现来修改已存在的类。 

+ 类型变基：会保留所有被变基类的方法实现。Byte Buddy 会用兼容的签名复制所有方法的实现为一个私有的重命名过的方法， 而不像类重定义时丢弃覆写的方法。用这种方式的话，不存在方法实现的丢失，而且变基的方法可以通过调用这些重命名的方法， 继续调用原始的方法。

+ 加载创建的类

  DynamicType.Unloaded类允许提取动态类型的字节数组。为了方便， 该类型还额外提供了saveIn(File)方法，该方法允许你将一个类保存到给定的文件夹。此外， 它允许你通过inject(File)方法将类注入到已存在的 jar 文件。

+ 类加载策略

  + WRAPPER
  + CHILD_FIRST
  + JNJECTION

+ 重新加载类

+ 使用未加载的类

+ 创建Java Agent （很重要）

+ 使用泛型



## 字段和方法

+ 方法的覆写

  包括方法的适配与内容覆写（覆写更多的是类似AOP环绕通知）

+ 委托方法调用

  覆写方法可以委托给一个动态类。

+ 调用超类方法

+ 调用默认方法（default 方法）

+ 调用特定方法（比如构造器方法）

+ 访问字段（FieldAccessor）

  

## 注解

+ 可以为类或成员添加注解
+ 通过`*AttributeAppender` 继承或丢弃变基或重定义方法的任何注解



## 自定义方法实现

这部分讲怎么使用Byte Buddy API 自定义一个方法，相对于前面委托的方式实现显得复杂很多。





