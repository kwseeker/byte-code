# AspectJ

内容源于：[aspectj-doc](https://www.eclipse.org/aspectj/doc/released/progguide/index.html)

书籍都比较老旧，看官方文档靠谱点。

## AspectJ简介

### Aspect介绍

官方文档列举了一个曾经让人头疼的问题：“安全策略”如何统一应用到程序的任何添加项？

像这种横切关注点，由于跨越很多类不容易变成类，也不容易重用和继承，很难处理。

参考：[面向对象困境之 —— 横切关注点](http://jalan.space/2019/08/04/2019/oop-crosscutting-concern/) 这篇讨论。

> **横切关注点**：
>
> **关注点**是指基于功能划分系统的一部分。
>
> 部分关注点「横切」程序代码中的数个模块，即在多个模块中都有出现，它们即被称作**横切关注点（Cross-cutting concerns, Horizontal concerns)**。
>
> 如: 日志相关功能、接口鉴权功能、不同模块间消息通知。

面向切面的编程是一种模块化横切关注点的方式，就像面向对象编程是一种模块化公共关注点的方式一样。 AspectJ 是面向方面编程的 Java 实现。

AspectJ仅向Java添加了一个新概念，即**连接点**——这实际上只是一个现有Java概念的名称。它只向Java添加了一些新结构：**切入点**、**通知**、**类型间声明**和**切面**。切入点和通知动态地影响程序流，类型间声明静态地影响程序的类层次结构，而切面封装了这些新构造。

AspectJ 还具有不同类型的类型间声明，允许程序员修改程序的静态结构，即其类的成员和类之间的关系。

`aspect`（**切面**）是AspectJ的可重用、可继承的模块单元。

#### 动态连接点模型

AspectJ提供了许多种连接点：

+ **方法调用连接点**

  运行时的每个方法调用都是不同的连接点。

+ ...

#### 切点

就是要切入通知的连接点。

```java
call(void Point.setX(int))
call(void Point.setX(int)) || call(void Point.setY(int))

call(void FigureElement.setXY(int,int)) ||
call(void Point.setX(int))              ||
call(void Point.setY(int))              ||
call(void Line.setP1(Point))            ||
call(void Line.setP2(Point));
```

**切点定义语法**：

**call**定义**方法调用切点**，切点可以由其他切点通过**&&、||、！**构造生成。

一个切点可以**横切不同的Class、Interface类型**。

切点可**命名** (pointcut pointcut_name() : pointcut_define)。

```java
pointcut move() :
    call(void FigureElement.setXY(int,int)) ||
    call(void Point.setX(int))              ||
    call(void Point.setY(int))              ||
    call(void Line.setP1(Point))            ||
    call(void Line.setP2(Point));
```

**切入点定义方法**：

+ **基于一组方法签名的显式枚举**

  上面的例子都是

+ **基于属性的横切**(使用通配符＋属性)

  ```java
  //Figure类make开头的任何无返回值的方法，TODO: 没有说写访问控制属性，能匹配private方法么？
  call(void Figure.make*(..))
  call(public * Figure.* (..))
  //挑出move()挑出的连接点的动态上下文中出现的每个连接点, TODO:不太理解，测试
  cflow(move())
  ```

#### 通知

通知类型：

+ before()
+ after() returning

切点不仅可以挑选连接点，还可以在其连接点处公开部分执行上下文。切入点公开的值可以在通知声明的主体中使用。

```java
//TODO 测试
after(FigureElement fe, int x, int y) returning:
        ...SomePointcut... {
    ...SomeBody...
}
after(FigureElement fe, int x, int y) returning:
        ...SomePointcut... {
    System.out.println(fe + " moved to (" + x + ", " + y + ")");
}
```

通过**this, target, args**切点发布上下文

```java
pointcut setXY(FigureElement fe, int x, int y):
    call(void FigureElement.setXY(int, int))
    && target(fe)
    && args(x, y);

after(FigureElement fe, int x, int y) returning: setXY(fe, x, y) {
    System.out.println(fe + " moved to (" + x + ", " + y + ").");
}
```

#### 类型间声明

AspectJ 中的类型间声明是跨越类及其层次结构的声明。在Java中，创建一个捕获此新功能的接口，然后向每个受影响的类添加一个实现此接口的方法。

AspectJ会在编译期静态添加

```java
//假设我们想让Screen对象观察对Point对象的更改，Point是一个现有的类。我们可以通过编写一个方面来实现这一点，声明Point Point类有一个实例字段observer，该字段跟踪正在观察Point的Screen对象。
//TODO 测试
aspect PointObserving {
    private Vector Point.observers = new Vector();

    public static void addObserver(Point p, Screen s) {
        p.observers.add(s);
    }
    public static void removeObserver(Point p, Screen s) {
        p.observers.remove(s);
    }

    pointcut changes(Point p): target(p) && call(void Point.set*(int));

    after(Point p): changes(p) {
        Iterator iter = p.observers.iterator();
        while ( iter.hasNext() ) {
            updateObserver(p, (Screen)iter.next());
        }
    }

    static void updateObserver(Point p, Screen s) {
        s.display(p);
    }
}
```

无论是 Screen 还是 Point 的代码都无需修改，并且支持此新功能所需的所有更改都是本地的。

#### 切面

像类一样，方面可以被实例化，但是AspectJ控制了实例化的发生方式——因此不能使用Java的new来构建新的方面实例。默认情况下，每个方面都是一个单例，因此会创建一个方面实例。这意味着通知可以使用方面的非静态字段。

```java
//Advice使用切面非静态字段
aspect Logging {
    OutputStream logStream = System.err;

    before(): move() {
        logStream.println("about to move");
    }
}
```

### 开发切面

开发过程中的切面使用案例。

这些方面有助于调试、测试和性能调优工作。方面定义的行为范围从简单的跟踪到概要分析，再到应用程序内部一致性的测试。使用AspectJ可以干净地模块化这类功能，因此**可以在需要时轻松地启用和禁用该功能**。

> 如何轻松启用和禁用切面模块化的功能？

#### 追踪

可以通过切面的方式定义一组用于调试某问题的切点。这样既可以很容易地保留设计一组良好跟踪点的工作，又可以在不使用跟踪时禁用跟踪。

#### 分析和记录

如分析程序在调用rotate的控制流中发生的对Line上的rotate方法的调用次数和对Point的set*方法的调用次数

```java
aspect SetsInRotateCounting {
    int rotateCount = 0;
    int setCount = 0;

    before(): call(void Line.rotate(double)) {
        rotateCount++;
    }

    before(): call(void Point.set*(int))
              && cflow(call(void Line.rotate(double))) {
        setCount++;
    }
}
```

#### 前置条件和后置条件测试

AspectJ 使以模块化形式实施前置和后置条件测试成为可能。

#### 合同执行

> withincode 

#### 配置管理

可以使用类似make-file的技术管理aspect配置，以决定是否在AspectJ编译器调用中包含不包含切面。

> 具体怎么做？

### 生产切面

生产过程中的切面使用案例。

#### 变更监控

```java
//移动监控，监控位置变更的方法
aspect MoveTracking {
    private static boolean dirty = false;

    public static boolean testAndClear() {
        boolean result = dirty;
        dirty = false;
        return result;
    }

    pointcut move():
        call(void FigureElement.setXY(int, int)) ||
        call(void Line.setP1(Point))             ||
        call(void Line.setP2(Point))             ||
        call(void Point.setX(int))               ||
        call(void Point.setY(int));

    after() returning: move() {
        dirty = true;
    }
}
```

#### 上下文传递

这个问题是经常遇到的，比如Web接口通常要传递上下文用户信息。

```java
//以下代码添加了仅当在 ColorControllingClient 上的方法的控制流中调用 Figure 的工厂方法时才运行的 after 通知。
aspect ColorControl {
    pointcut CCClientCflow(ColorControllingClient client):
        cflow(call(* * (..)) && target(client));

    pointcut make(): call(FigureElement Figure.make*(..));
	// TODO 
    after (ColorControllingClient c) returning (FigureElement fe):
            make() && CCClientCflow(c) {
        fe.setColor(c.colorFor(fe));
    }
}
```

#### 提供一致的行为

```java
//下面切面确保 com.bigboxco 包的所有公共方法记录它们向调用者抛出的任何错误（在 Java 中，错误就像一个异常
aspect PublicErrorLogging {
    Log log = new Log();

    pointcut publicMethodCall():
        call(public * com.bigboxco.*.*(..));

    after() throwing (Error e): publicMethodCall() {
        log.write(e);
    }
}
```

避免重入调用

```java
after() throwing (Error e):
        publicMethodCall() && !cflow(publicMethodCall()) {
    log.write(e);
}
```

## AspectJ语言

这章讲怎么写切面。

### 切面剖析

内容合并到后面两节。

### [连接点和切点](https://www.eclipse.org/aspectj/doc/released/progguide/language-joinPoints.html)

切点本身挑选连接点，即程序执行过程中感兴趣的点。这些连接点可以是**方法**或**构造函数**的调用和执行、**异常**的处理、**字段赋值和访问**等（本质上全都是方法）。

切点定义由左边和右边组成，中间用冒号分隔。左边由**切点名称**和**切点参数(即事件发生时可用的数据)**组成。右边由**切点本身**组成。

#### 一些切点案例

```java
//当特定方法体执行时
execution(void Point.setX(int))
//当特定方法调用时
call(void Point.setX(int))
//当异常处理器执行时 TODO 异常处理器指什么？
handler(ArrayOutOfBoundsException)

//当this是SomeType类型时，即执行的代码的this对象是SomeType类型
this(SomeType)
//当target对象是SomeType类型时，如调用的实例方法属于SomeType
target(SomeType)
//当执行的代码属于MyClass时，即切点代码属于SomeType，和target是相同的只不过within是静态织入的，target是动态织入的
within(MyClass)
//当执行的代码属于某个方法时
withincode()
//cflow(P) 挑选出P挑选出来的连接点的控制流中的每个连接点
//当连接点在Test.main()方法调用的控制流中时
cflow(call(void Test.main()))

```

切点组合：&&、||、 !

切点通配符：*

通过参数类型适配：略

> **execution vs call**:
>
> 1. call是在调用处进行织入通知代码，而execution是在连接点方法内部织入通知代码。
> 2. call不会挑选出超类的非静态方法。 TODO 测试
>
> **this vs target vs within**:
>
> this指选取的连接点的调用者，即方法在哪个类中被调用，是动态织入的。如果this()中传参是父类，则会匹配所有父类和子类中此方法调用连接点。
>
> target指选取的连接点的代码所有者，即方法属于哪个类，是动态织入的。如果target()中传参是父类，则会匹配所有父类和子类中此方法实现的连接点。
>
> within指选取的连接点的代码所有者，即方法属于哪个类，是静态织入的。
>
> **动态织入和静态织入**：
>
> 动态织入是运行时织入通知，静态织入是编译时织入通知。
>
> TODO 这两种方式的使用场景？
>
> !!! 要深刻体会它们的异同，还是要反编译加强之后的类的class文件。







```java
//挑选出Server对象所有公共方法，并允许切入的代码访问其方法被调用的Server对象。
pointcut services(Server s): target(s) && call(public * *(..))
```

`target()` 用于限定关注哪些类型实例。

```java
//只关注Point类实例的setX或setY方法被执行
pointcut setter(): target(Point) &&
                   (call(void setX(int)) ||
                    call(void setY(int)));
```

`within()`

```java
//挑选出在类MyClass中处理IOException类型异常
pointcut ioHandler(): within(MyClass) && handler(IOException);
```



### 

### 通知

翻译成“建议”、“通知”都不太好，“增强”更贴切。

### 类型间声明

### thisJoinPoint



## 实例

### 官方提供的实例

下载Aspectj SDK包，安装

```shell
java -jar aspectj-1.9.6.jar
```

最后在安装目录下doc/example目录下可以看到官方实例。

详细参考安装目录下的README-AspectJ.html。

```shell
export ASPECTJ_HOME=/home/lee/lib/aspectj1.9
export PATH=$ASPECTJ_HOME/bin:$PATH
export CLASSPATH=$ASPECTJ_HOME/lib/aspectjrt.jar:$CLASSPATH
```

编译执行实例

```shell
ajc -argfile telecom/billing.lst
# unix
java telecom.BillingSimulation
# window
java -classpath ".;InstallDir/lib/aspectjrt.jar" telecom.BillingSimulation
```

### 基本技巧

### 生产切面

### 可重用切面



## 附录

### 快查手册

### 语言语义

### 实施说明





