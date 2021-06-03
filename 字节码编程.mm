<map version="freeplane 1.8.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="字节码编程" FOLDED="false" ID="ID_1939608702" CREATED="1622518642408" MODIFIED="1622518651057" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_note_icons="true" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="3" RULE="ON_BRANCH_CREATION"/>
<node TEXT="1 简介" POSITION="right" ID="ID_1805922126" CREATED="1622518694923" MODIFIED="1622518910789" STYLE="bubble">
<edge COLOR="#ff0000"/>
<node TEXT="1.1 是什么" ID="ID_1308055574" CREATED="1622518772865" MODIFIED="1622519999643"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#23601;&#26159;&#36890;&#36807;&#32534;&#20889;.class&#25991;&#20214;&#32780;&#19981;&#26159;.java&#25991;&#20214;&#36827;&#34892;&#32534;&#31243;&#12290;
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="1.2 使用场景" ID="ID_1219013940" CREATED="1622518785902" MODIFIED="1622518828407">
<node TEXT="非侵入式设计(如：链路追踪系统)" ID="ID_229280557" CREATED="1622519275563" MODIFIED="1622715893520"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      就是原本的业务代码我一点都不想改。
    </p>
    <p>
      
    </p>
    <p>
      需要的功能全部在外边实现，最后插入到原代码的字节码中。
    </p>
    <p>
      
    </p>
    <p>
      AOP并不是完全非侵入，只是侵入的少。
    </p>
  </body>
</html>

</richcontent>
<node TEXT="AOP-&gt;动态代理-&gt;字节码编程" ID="ID_981917924" CREATED="1622521530150" MODIFIED="1622521550221"/>
</node>
<node TEXT="探针技术" ID="ID_198389695" CREATED="1622715815557" MODIFIED="1622715822331">
<node TEXT="Dapper" ID="ID_1973068179" CREATED="1622715824254" MODIFIED="1622715827210"/>
<node TEXT="Zipkin" ID="ID_1503008270" CREATED="1622715827862" MODIFIED="1622715833995"/>
</node>
<node TEXT="查看生成的动态代理类增强类源码" ID="ID_1937720802" CREATED="1622703879604" MODIFIED="1622704281840"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      通过字节码编程技术可以生成动态代理类增强类的.class文件，然后用IDE打开就可以看到源码
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="1.3 原理" ID="ID_128139043" CREATED="1622518814928" MODIFIED="1622518838382"/>
<node TEXT="1.4 基础要求" ID="ID_1036125931" CREATED="1622703991060" MODIFIED="1622704009363">
<node TEXT="字节码文件结构" ID="ID_1383125819" CREATED="1622704010771" MODIFIED="1622704020234"/>
<node TEXT="字节码语法" ID="ID_1538302499" CREATED="1622705294621" MODIFIED="1622705301761"/>
<node TEXT="JVM工作原理" ID="ID_1201592630" CREATED="1622704022371" MODIFIED="1622704037313"/>
</node>
</node>
<node TEXT="2 使用" POSITION="right" ID="ID_775859151" CREATED="1622518719318" MODIFIED="1622518911586" STYLE="bubble">
<edge COLOR="#0000ff"/>
<node TEXT="2.1 框架＆工具" ID="ID_513928261" CREATED="1622518884006" MODIFIED="1622518912273" STYLE="bubble">
<node TEXT="ASM" ID="ID_277895809" CREATED="1622519120019" MODIFIED="1622717033101" LINK="https://asm.ow2.io/" STYLE="bubble"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000c0">需要对JVM有一定了解</font>
    </p>
    <p>
      
    </p>
    <p>
      ASM 是一个 Java 字节码操控框架。它能被用来动态生成类或者增强既有类的功能。ASM 可以直
    </p>
    <p>
      接产生二进制 class 文件,也可以在类被加载入 Java 虚拟机之前动态改变类行为。Java class 被
    </p>
    <p>
      存储在严格格式定义的 .class 文件里,这些类文件拥有足够的元数据来解析类中的所有元素:类
    </p>
    <p>
      名称、方法、属性以及 Java 字节码(指令)。ASM 从类文件中读入信息后,能够改变类行为,
    </p>
    <p>
      分析类信息,甚至能够根据用户要求生成新类。
    </p>
  </body>
</html>

</richcontent>
<node TEXT="入门" ID="ID_1823207950" CREATED="1622716888782" MODIFIED="1622717031837" STYLE="bubble">
<node TEXT="主要Class" ID="ID_1389619024" CREATED="1622717714784" MODIFIED="1622717728881" STYLE="bubble">
<node TEXT="ClassVisitor" ID="ID_1563679899" CREATED="1622717730008" MODIFIED="1622717738253">
<node TEXT="AnnotationVisitor" ID="ID_1480981868" CREATED="1622717769888" MODIFIED="1622717778613"/>
<node TEXT="FieldVisitor" ID="ID_550178601" CREATED="1622717778815" MODIFIED="1622717785173"/>
<node TEXT="MethodVisitor" ID="ID_549813245" CREATED="1622717785792" MODIFIED="1622717790149"/>
</node>
<node TEXT="ClassReader" ID="ID_1818293638" CREATED="1622717893351" MODIFIED="1622717948105"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      类分析以字节数组形式给出的已编译类,并针对在其 accept 方法
    </p>
    <p>
      参数 中传送的 ClassVisitor 实例,调用相应的 visitXxx 方法。这个类可以看
    </p>
    <p>
      作一个事 件产生器。
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="ClassWriter" ID="ID_1499397660" CREATED="1622717886279" MODIFIED="1622717965768"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ClassWriter 类是 ClassVisitor 抽象类的一个子类,它直接以二进制形式生成
    </p>
    <p>
      编 译后的类。它会生成一个字节数组形式的输出, 其中包含了已编译类, 可以用
    </p>
    <p>
      toByteArray 方法来提取。这个类可以看作一个事件使用器。
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="核心API" ID="ID_1072706887" CREATED="1622717010077" MODIFIED="1622717030021" STYLE="bubble">
<node TEXT="类" ID="ID_1493592141" CREATED="1622717036852" MODIFIED="1622717042266"/>
<node TEXT="方法" ID="ID_45966189" CREATED="1622717042589" MODIFIED="1622717047474"/>
<node TEXT="元数据" ID="ID_1795790163" CREATED="1622717047901" MODIFIED="1622717201723"/>
<node TEXT="后向兼容" ID="ID_1943665414" CREATED="1622717201931" MODIFIED="1622717213833"/>
</node>
<node TEXT="树API" ID="ID_389699291" CREATED="1622717018749" MODIFIED="1622717030517" STYLE="bubble">
<node TEXT="类" ID="ID_653102217" CREATED="1622717036852" MODIFIED="1622717042266"/>
<node TEXT="方法" ID="ID_971575272" CREATED="1622717042589" MODIFIED="1622717047474"/>
<node TEXT="元数据" ID="ID_1079154200" CREATED="1622717047901" MODIFIED="1622717201723"/>
<node TEXT="后向兼容" ID="ID_1969000427" CREATED="1622717201931" MODIFIED="1622717213833"/>
</node>
<node TEXT="应用到的设计模式" ID="ID_56253778" CREATED="1622720971983" MODIFIED="1622721018392" STYLE="bubble">
<node TEXT="观察者模式" ID="ID_714416300" CREATED="1622720979300" MODIFIED="1622720986876"/>
<node TEXT="装饰器模式" ID="ID_128574732" CREATED="1622720987038" MODIFIED="1622720996947"/>
</node>
</node>
<node TEXT="应用" ID="ID_367660777" CREATED="1622716876990" MODIFIED="1622717034085" STYLE="bubble">
<node TEXT="直接生成二进制代码" ID="ID_1647287371" CREATED="1622706761706" MODIFIED="1622706803982">
<node TEXT="案例：从0开发一个求两数之和的程序流程" ID="ID_1547703550" CREATED="1622705607920" MODIFIED="1622710958318"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      我们写的还是Java代码：
    </p>
    <p>
      步骤：
    </p>
    <p>
      1 使用ASM框架编码生成我们需要的程序的二进制字节码
    </p>
    <p>
      2 加载字节码，生成Class实例
    </p>
    <p>
      3 反射调用类的方法
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="拓展二进制代码功能" ID="ID_302226671" CREATED="1622706807360" MODIFIED="1622706842694">
<node TEXT="主要Class" ID="ID_217786422" CREATED="1622710967975" MODIFIED="1622710974083">
<node ID="ID_995007865" CREATED="1622711009608" MODIFIED="1622711009608"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      AdviceAdapter
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="案例：拓展已存在的两数求和class功能流程" ID="ID_1893473106" CREATED="1622706892384" MODIFIED="1622710966812"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      我们写的还是Java代码：
    </p>
    <p>
      步骤：
    </p>
    <p>
      1 使用ASM框架编码生成我们需要的程序的二进制字节码
    </p>
    <p>
      2 加载字节码，生成Class实例
    </p>
    <p>
      3 反射调用类的方法
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="Javaassist" ID="ID_64805459" CREATED="1622519124371" MODIFIED="1622519238336" STYLE="bubble"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000c0">&#22522;&#20110;ASM</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Byte Buddy" ID="ID_1416223891" CREATED="1622519133634" MODIFIED="1622519239037" STYLE="bubble"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000c0">&#22522;&#20110;ASM</font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="3 附录" POSITION="right" ID="ID_1051133559" CREATED="1622519688245" MODIFIED="1622519698910" STYLE="bubble">
<edge COLOR="#00ff00"/>
<node TEXT="字节码指令集" ID="ID_1713454874" CREATED="1622687234175" MODIFIED="1622687264169" LINK="https://docs.oracle.com/javase/specs/jvms/se7/html/jvms-6.html"/>
<node TEXT="《ASM4使用手册》" ID="ID_1770956740" CREATED="1622519700271" MODIFIED="1622707746721" LINK="https://www.yuque.com/mikaelzero/asm"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ASM库的目的是生成、转换和分析以字节数组表示的已编译Java类（它们在磁盘中的存储和在Java虚拟机中的加载都采用这种字节数组形式）。
    </p>
    <p>
      
    </p>
    <p>
      这个链接是官方文档的中文手册。
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="ASM javadoc" ID="ID_765964446" CREATED="1622707862462" MODIFIED="1622707882076" LINK="https://asm.ow2.io/javadoc/index.html"/>
<node TEXT="Java字节码指令表" ID="ID_1158900596" CREATED="1622519724857" MODIFIED="1622519745547"/>
<node TEXT="IDEA插件：" ID="ID_1306821346" CREATED="1622521577686" MODIFIED="1622522298694">
<node TEXT="jclasslib bytecode viewer" ID="ID_1906567966" CREATED="1622522282634" MODIFIED="1622689579385"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <a http-equiv="content-type" content="text/html; charset=utf-8" href="https://plugins.jetbrains.com/plugin/9248-jclasslib-bytecode-viewer">https://plugins.jetbrains.com/plugin/9248-jclasslib-bytecode-viewer </a>
    </p>
    <p>
      <a http-equiv="content-type" content="text/html; charset=utf-8" href="https://plugins.jetbrains.com/plugin/9248-jclasslib-bytecode-viewer">
</a>    </p>
    <p>
      分门别类地列举出下面各个部分的内容：
    </p>
    <p>
      
    </p>
    <p>
      一般信息
    </p>
    <p>
      常量池
    </p>
    <p>
      接口
    </p>
    <p>
      字段
    </p>
    <p>
      方法
    </p>
    <p>
      属性
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="ASM Bytecode Outline" ID="ID_1996204019" CREATED="1622522279916" MODIFIED="1622705066354"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      可自动生成源码对应的ASM开发的代码，基本上就只需要会改就行了。
    </p>
    <p>
      
    </p>
    <p>
      另外还能生成对应的字节码、groovy代码。
    </p>
    <p>
      
    </p>
    <p>
      <font color="#cc7832">package </font>org.itstack.demo.javassist<font color="#cc7832">;<br/></font><i><font color="#629755"><br/></font></i><font color="#cc7832">public class </font>HelloWorld {<br/>&nbsp;&nbsp;&nbsp; <font color="#cc7832">public static void </font><font color="#ffc66d">main</font>(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.<font color="#9876aa"><i>out</i></font>.println(<font color="#6a8759">&quot;hi javassist! Greetings from </font><font color="#6a8759" face="Noto Sans Mono CJK SC">小傅哥</font><font color="#6a8759">(bugstack.cn)&quot;</font>)<font color="#cc7832">;<br/>&nbsp;&nbsp;&nbsp;&nbsp; </font>}<br/>}
    </p>
    <p>
      
    </p>
    <p>
      <b>javap -c 反编译</b>：
    </p>
    <p>
      
    </p>
    <p>
      <font color="#0033cc">public class org.itstack.demo.javassist.HelloWorld { </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;public org.itstack.demo.javassist.HelloWorld(); </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;Code: </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0: aload_0 </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1: invokespecial #1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Method java/lang/Object.&quot;&lt;init&gt;&quot;:()V </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4: return </font>
    </p>
    <p>
      
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;public static void main(java.lang.String[]); </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;Code: </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0: getstatic&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Field java/lang/System.out:Ljava/io/PrintStream; </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3: ldc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// String hi javassist! Greetings from 小傅哥(bugstack.cn) </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5: invokevirtual #4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Method java/io/PrintStream.println:(Ljava/lang/String;)V </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8: return </font>
    </p>
    <p>
      <font color="#0033cc">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <b>ASM Bytecode Outline 反编译</b>：
    </p>
    <p>
      
    </p>
    <p>
      <font color="#0033cc">// class version 52.0 (52) </font>
    </p>
    <p>
      <font color="#0033cc">// access flags 0x21 </font>
    </p>
    <p>
      <font color="#0033cc">public class org/itstack/demo/javassist/HelloWorld { </font>
    </p>
    <p>
      
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;// compiled from: HelloWorld.java </font>
    </p>
    <p>
      
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;// access flags 0x1 </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;public &lt;init&gt;()V </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;L0 </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;LINENUMBER 8 L0 </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;ALOAD 0 </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;INVOKESPECIAL java/lang/Object.&lt;init&gt; ()V </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;RETURN </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;L1 </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;LOCALVARIABLE this Lorg/itstack/demo/javassist/HelloWorld; L0 L1 0 </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;MAXSTACK = 1 </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;MAXLOCALS = 1 </font>
    </p>
    <p>
      
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;// access flags 0x9 </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;public static main([Ljava/lang/String;)V </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;L0 </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;LINENUMBER 11 L0 </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;GETSTATIC java/lang/System.out : Ljava/io/PrintStream; </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;LDC &quot;hi javassist! Greetings from \u5c0f\u5085\u54e5(bugstack.cn)&quot; </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;INVOKEVIRTUAL java/io/PrintStream.println (Ljava/lang/String;)V </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;L1 </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;LINENUMBER 12 L1 </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;RETURN </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;L2 </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;LOCALVARIABLE args [Ljava/lang/String; L0 L2 0 </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;MAXSTACK = 2 </font>
    </p>
    <p>
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;MAXLOCALS = 1 </font>
    </p>
    <p>
      <font color="#0033cc">}</font>
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="常用指令" ID="ID_73868130" CREATED="1622687899555" MODIFIED="1622691073311"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      javac HelloWorld.java
    </p>
    <p>
      javap -p -v -c HelloWorld
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="AspectJ" ID="ID_18268467" CREATED="1622726103052" MODIFIED="1622726202172"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      AspectJ Document<a http-equiv="content-type" content="text/html; charset=utf-8" href="https://www.eclipse.org/aspectj/docs.php">
</a>    </p>
    <p>
      <a http-equiv="content-type" content="text/html; charset=utf-8" href="https://www.eclipse.org/aspectj/docs.php">https://www.eclipse.org/aspectj/docs.php</a>&nbsp;
    </p>
    <p>
      The AspectJ Programming Guide
    </p>
    <p>
      <a http-equiv="content-type" content="text/html; charset=utf-8" href="https://www.eclipse.org/aspectj/doc/released/progguide/index.html">https://www.eclipse.org/aspectj/doc/released/progguide/index.html</a>&nbsp;
    </p>
    <p>
      <a http-equiv="content-type" content="text/html; charset=utf-8" href="https://www.eclipse.org/aspectj/doc/released/runtime-api/index.html">https://www.eclipse.org/aspectj/doc/released/runtime-api/index.html</a>&nbsp;
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</map>
