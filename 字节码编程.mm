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
      &#x5c31;&#x662f;&#x539f;&#x672c;&#x7684;&#x4e1a;&#x52a1;&#x4ee3;&#x7801;&#x6211;&#x4e00;&#x70b9;&#x90fd;&#x4e0d;&#x60f3;&#x6539;&#x3002;
    </p>
    <p>
      
    </p>
    <p>
      &#x9700;&#x8981;&#x7684;&#x529f;&#x80fd;&#x5168;&#x90e8;&#x5728;&#x5916;&#x8fb9;&#x5b9e;&#x73b0;&#xff0c;&#x6700;&#x540e;&#x63d2;&#x5165;&#x5230;&#x539f;&#x4ee3;&#x7801;&#x7684;&#x5b57;&#x8282;&#x7801;&#x4e2d;&#x3002;
    </p>
    <p>
      
    </p>
    <p>
      AOP&#x5e76;&#x4e0d;&#x662f;&#x5b8c;&#x5168;&#x975e;&#x4fb5;&#x5165;&#xff0c;&#x53ea;&#x662f;&#x4fb5;&#x5165;&#x7684;&#x5c11;&#x3002;
    </p>
  </body>
</html>
</richcontent>
<node TEXT="AOP-&gt;静态代理(静态织入)-&gt;字节码编程&#xa;AOP-&gt;动态代理(动态织入)-&gt;字节码编程" ID="ID_981917924" CREATED="1622521530150" MODIFIED="1622960824845"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Spring AOP
    </p>
    <p>
      AspectJ
    </p>
    <p>
      
    </p>
    <p>
      &#38745;&#24577;&#20195;&#29702;&#20998;&#20026;&#65306;&#32534;&#35793;&#26102;&#32455;&#20837;&#65288;&#29305;&#27530;&#32534;&#35793;&#22120;&#23454;&#29616;&#65289;&#12289;&#31867;&#21152;&#36733;&#26102;&#32455;&#20837;&#65288;&#29305;&#27530;&#30340;&#31867;&#21152;&#36733;&#22120;&#23454;&#29616;&#65289;&#12290;
    </p>
    <p>
      &#21160;&#24577;&#20195;&#29702;&#20998;&#20026;&#65306;JDK&#21160;&#24577;&#20195;&#29702;&#65288;&#22522;&#20110;&#25509;&#21475;&#26469;&#23454;&#29616;&#65289;&#12289;CGlib&#65288;&#22522;&#20110;&#31867;&#23454;&#29616;&#65289;&#12290;
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="组件化风控模型包" ID="ID_1160023960" CREATED="1624165572158" MODIFIED="1624165589524"/>
<node TEXT="开发调试组件" ID="ID_572441052" CREATED="1624165598998" MODIFIED="1624165611185">
<node TEXT="mock" ID="ID_578702988" CREATED="1624193172669" MODIFIED="1624193191124"/>
</node>
</node>
<node TEXT="查看生成的动态代理类增强类源码" ID="ID_1937720802" CREATED="1622703879604" MODIFIED="1622704281840"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#x901a;&#x8fc7;&#x5b57;&#x8282;&#x7801;&#x7f16;&#x7a0b;&#x6280;&#x672f;&#x53ef;&#x4ee5;&#x751f;&#x6210;&#x52a8;&#x6001;&#x4ee3;&#x7406;&#x7c7b;&#x589e;&#x5f3a;&#x7c7b;&#x7684;.class&#x6587;&#x4ef6;&#xff0c;&#x7136;&#x540e;&#x7528;IDE&#x6253;&#x5f00;&#x5c31;&#x53ef;&#x4ee5;&#x770b;&#x5230;&#x6e90;&#x7801;
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="混沌工程" ID="ID_128279620" CREATED="1623674863607" MODIFIED="1624164728845"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#20851;&#20110;&#28151;&#27788;&#24037;&#31243;&#21442;&#32771;: &#12298;&#28151;&#27788;&#24037;&#31243;&#65306;Netflix&#31995;&#32479;&#31283;&#23450;&#24615;&#20043;&#36947;&#12299; 
    </p>
    <p>
      
    </p>
    <p>
      &#31616;&#21333;&#35828;&#23601;&#26159;&#22312;&#27491;&#24335;&#29615;&#22659;,&#26102;&#24120;&#27169;&#25311;&#24341;&#21457;&#20043;&#21069;&#39057;&#21457;&#30340;&#20107;&#25925;&#25110;&#28508;&#22312;&#30340;&#28431;&#27934;,&#20197;&#39564;&#35777;&#20462;&#25913;&#20043;&#21518;&#30340;&#31995;&#32479;&#38754;&#23545;&#36825;&#31181;&#38382;&#39064;&#30340;&#31283;&#23450;&#24615;.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="反向工程" ID="ID_943169794" CREATED="1623674872173" MODIFIED="1624165290874"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#36870;&#21521;&#24037;&#31243;&#65288;Software Reverse Engineering&#65289;&#21448;&#31216;&#36719;&#20214;&#21453;&#21521;&#24037;&#31243;&#65292;
    </p>
    <p>
      &#26159;&#25351;&#20174;&#21487;&#36816;&#34892;&#30340;&#31243;&#24207;&#31995;&#32479;&#20986;&#21457;&#65292;&#36816;&#29992;&#35299;&#23494;&#12289;&#21453;&#27719;&#32534;&#12289;&#31995;&#32479;&#20998;&#26512;&#12289;&#31243;&#24207;&#29702;&#35299;&#31561;&#22810;&#31181;&#35745;&#31639;&#26426;&#25216;&#26415;, &#23545;&#36719;&#20214;&#30340;&#32467;&#26500;&#12289;&#27969;&#31243;&#12289;&#31639;&#27861;&#12289;&#20195;&#30721;&#31561;&#36827;&#34892;&#36870;&#21521;&#25286;&#35299;&#21644;&#20998;&#26512;&#65292;&#25512;&#23548;&#20986;&#36719;&#20214;&#20135;&#21697;&#30340;
    </p>
    <p>
      &#28304;&#20195;&#30721;&#12289;&#35774;&#35745;&#21407;&#29702;&#12289;&#32467;&#26500;&#12289;&#31639;&#27861;&#12289;&#22788;&#29702;&#36807;&#31243;&#12289;&#36816;&#34892;&#26041;&#27861;&#21450;&#30456;&#20851;&#25991;&#26723;&#31561;&#12290;
    </p>
    <p>
      &#36890;&#24120;&#65292;&#20154;&#20204;&#25226;&#23545;&#36719;&#20214;&#36827;&#34892;&#21453;&#21521;&#20998;&#26512;&#30340;&#25972;&#20010;&#36807;&#31243;&#32479;&#31216;&#20026;&#36719;&#20214;&#36870;&#21521;&#24037;&#31243;&#65292;&#25226;&#22312;&#36825;&#20010;&#36807;&#31243;&#20013;&#25152;&#37319;&#29992;&#30340;&#25216;&#26415;&#37117;&#32479;&#31216;&#20026;&#36719;&#20214;&#36870;&#21521;&#24037;&#31243;&#25216;&#26415;&#12290;
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="软件破解" ID="ID_292439335" CREATED="1623674882783" MODIFIED="1623674889769"/>
<node TEXT="软件监控" ID="ID_388409910" CREATED="1624165412938" MODIFIED="1624165417740">
<node TEXT="探针技术" ID="ID_198389695" CREATED="1622715815557" MODIFIED="1622715822331">
<node TEXT="Dapper" ID="ID_1973068179" CREATED="1622715824254" MODIFIED="1622715827210"/>
<node TEXT="Zipkin" ID="ID_1503008270" CREATED="1622715827862" MODIFIED="1622715833995"/>
</node>
<node TEXT="Arthas" ID="ID_1343634815" CREATED="1623677913512" MODIFIED="1623677921447">
<node TEXT="Arthas-&gt;javaagent-&gt;asm" ID="ID_368788301" CREATED="1623677926347" MODIFIED="1623677950521"/>
</node>
</node>
<node TEXT="软件部署" ID="ID_1814786113" CREATED="1624165437019" MODIFIED="1624165440730">
<node TEXT="热部署" ID="ID_649437170" CREATED="1624165442400" MODIFIED="1624165450023"/>
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
<node TEXT="2.1 字节码框架＆工具" ID="ID_513928261" CREATED="1622518884006" MODIFIED="1624594700644" STYLE="bubble">
<node TEXT="ASM" ID="ID_277895809" CREATED="1622519120019" MODIFIED="1624619656401" LINK="https://asm.ow2.io/" STYLE="bubble"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000c0">&#x9700;&#x8981;&#x5bf9;JVM&#x6709;&#x4e00;&#x5b9a;&#x4e86;&#x89e3;</font>
    </p>
    <p>
      
    </p>
    <p>
      ASM &#x662f;&#x4e00;&#x4e2a; Java &#x5b57;&#x8282;&#x7801;&#x64cd;&#x63a7;&#x6846;&#x67b6;&#x3002;&#x5b83;&#x80fd;&#x88ab;&#x7528;&#x6765;&#x52a8;&#x6001;&#x751f;&#x6210;&#x7c7b;&#x6216;&#x8005;&#x589e;&#x5f3a;&#x65e2;&#x6709;&#x7c7b;&#x7684;&#x529f;&#x80fd;&#x3002;ASM &#x53ef;&#x4ee5;&#x76f4;
    </p>
    <p>
      &#x63a5;&#x4ea7;&#x751f;&#x4e8c;&#x8fdb;&#x5236; class &#x6587;&#x4ef6;,&#x4e5f;&#x53ef;&#x4ee5;&#x5728;&#x7c7b;&#x88ab;&#x52a0;&#x8f7d;&#x5165; Java &#x865a;&#x62df;&#x673a;&#x4e4b;&#x524d;&#x52a8;&#x6001;&#x6539;&#x53d8;&#x7c7b;&#x884c;&#x4e3a;&#x3002;Java class &#x88ab;
    </p>
    <p>
      &#x5b58;&#x50a8;&#x5728;&#x4e25;&#x683c;&#x683c;&#x5f0f;&#x5b9a;&#x4e49;&#x7684; .class &#x6587;&#x4ef6;&#x91cc;,&#x8fd9;&#x4e9b;&#x7c7b;&#x6587;&#x4ef6;&#x62e5;&#x6709;&#x8db3;&#x591f;&#x7684;&#x5143;&#x6570;&#x636e;&#x6765;&#x89e3;&#x6790;&#x7c7b;&#x4e2d;&#x7684;&#x6240;&#x6709;&#x5143;&#x7d20;:&#x7c7b;
    </p>
    <p>
      &#x540d;&#x79f0;&#x3001;&#x65b9;&#x6cd5;&#x3001;&#x5c5e;&#x6027;&#x4ee5;&#x53ca; Java &#x5b57;&#x8282;&#x7801;(&#x6307;&#x4ee4;)&#x3002;ASM &#x4ece;&#x7c7b;&#x6587;&#x4ef6;&#x4e2d;&#x8bfb;&#x5165;&#x4fe1;&#x606f;&#x540e;,&#x80fd;&#x591f;&#x6539;&#x53d8;&#x7c7b;&#x884c;&#x4e3a;,
    </p>
    <p>
      &#x5206;&#x6790;&#x7c7b;&#x4fe1;&#x606f;,&#x751a;&#x81f3;&#x80fd;&#x591f;&#x6839;&#x636e;&#x7528;&#x6237;&#x8981;&#x6c42;&#x751f;&#x6210;&#x65b0;&#x7c7b;&#x3002;
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000c0">偏向底层,性能好,门槛高 </font>
    </p>
    <p>
      <font color="#0000c0">需要对字节码非常熟练</font>
    </p>
  </body>
</html>

</richcontent>
<node TEXT="入门" ID="ID_1823207950" CREATED="1622716888782" MODIFIED="1622717031837" STYLE="bubble">
<node TEXT="主要Class" ID="ID_1389619024" CREATED="1622717714784" MODIFIED="1624199634641" STYLE="fork">
<node TEXT="ClassVisitor" ID="ID_1563679899" CREATED="1622717730008" MODIFIED="1622717738253">
<node TEXT="AnnotationVisitor" ID="ID_1480981868" CREATED="1622717769888" MODIFIED="1622864998288"/>
<node TEXT="FieldVisitor" ID="ID_550178601" CREATED="1622717778815" MODIFIED="1622717785173"/>
<node TEXT="MethodVisitor" ID="ID_549813245" CREATED="1622717785792" MODIFIED="1622717790149"/>
</node>
<node TEXT="ClassReader" ID="ID_1818293638" CREATED="1622717893351" MODIFIED="1622717948105"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#x7c7b;&#x5206;&#x6790;&#x4ee5;&#x5b57;&#x8282;&#x6570;&#x7ec4;&#x5f62;&#x5f0f;&#x7ed9;&#x51fa;&#x7684;&#x5df2;&#x7f16;&#x8bd1;&#x7c7b;,&#x5e76;&#x9488;&#x5bf9;&#x5728;&#x5176; accept &#x65b9;&#x6cd5;
    </p>
    <p>
      &#x53c2;&#x6570; &#x4e2d;&#x4f20;&#x9001;&#x7684; ClassVisitor &#x5b9e;&#x4f8b;,&#x8c03;&#x7528;&#x76f8;&#x5e94;&#x7684; visitXxx &#x65b9;&#x6cd5;&#x3002;&#x8fd9;&#x4e2a;&#x7c7b;&#x53ef;&#x4ee5;&#x770b;
    </p>
    <p>
      &#x4f5c;&#x4e00;&#x4e2a;&#x4e8b; &#x4ef6;&#x4ea7;&#x751f;&#x5668;&#x3002;
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
      ClassWriter &#x7c7b;&#x662f; ClassVisitor &#x62bd;&#x8c61;&#x7c7b;&#x7684;&#x4e00;&#x4e2a;&#x5b50;&#x7c7b;,&#x5b83;&#x76f4;&#x63a5;&#x4ee5;&#x4e8c;&#x8fdb;&#x5236;&#x5f62;&#x5f0f;&#x751f;&#x6210;
    </p>
    <p>
      &#x7f16; &#x8bd1;&#x540e;&#x7684;&#x7c7b;&#x3002;&#x5b83;&#x4f1a;&#x751f;&#x6210;&#x4e00;&#x4e2a;&#x5b57;&#x8282;&#x6570;&#x7ec4;&#x5f62;&#x5f0f;&#x7684;&#x8f93;&#x51fa;, &#x5176;&#x4e2d;&#x5305;&#x542b;&#x4e86;&#x5df2;&#x7f16;&#x8bd1;&#x7c7b;, &#x53ef;&#x4ee5;&#x7528;
    </p>
    <p>
      toByteArray &#x65b9;&#x6cd5;&#x6765;&#x63d0;&#x53d6;&#x3002;&#x8fd9;&#x4e2a;&#x7c7b;&#x53ef;&#x4ee5;&#x770b;&#x4f5c;&#x4e00;&#x4e2a;&#x4e8b;&#x4ef6;&#x4f7f;&#x7528;&#x5668;&#x3002;
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="AdviceAdapter" ID="ID_654037453" CREATED="1623675857908" MODIFIED="1623675862808"/>
</node>
<node TEXT="核心API" ID="ID_1072706887" CREATED="1622717010077" MODIFIED="1624199634640" STYLE="fork">
<node TEXT="类" ID="ID_1493592141" CREATED="1622717036852" MODIFIED="1622717042266"/>
<node TEXT="方法" ID="ID_45966189" CREATED="1622717042589" MODIFIED="1622717047474"/>
<node TEXT="元数据" ID="ID_1795790163" CREATED="1622717047901" MODIFIED="1622717201723"/>
<node TEXT="后向兼容" ID="ID_1943665414" CREATED="1622717201931" MODIFIED="1622717213833"/>
</node>
<node TEXT="树API" ID="ID_389699291" CREATED="1622717018749" MODIFIED="1624199634640" STYLE="fork">
<node TEXT="类" ID="ID_653102217" CREATED="1622717036852" MODIFIED="1622717042266"/>
<node TEXT="方法" ID="ID_971575272" CREATED="1622717042589" MODIFIED="1622717047474"/>
<node TEXT="元数据" ID="ID_1079154200" CREATED="1622717047901" MODIFIED="1622717201723"/>
<node TEXT="后向兼容" ID="ID_1969000427" CREATED="1622717201931" MODIFIED="1622717213833"/>
</node>
<node TEXT="应用到的设计模式" ID="ID_56253778" CREATED="1622720971983" MODIFIED="1624199634637" STYLE="fork">
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
      &#x6211;&#x4eec;&#x5199;&#x7684;&#x8fd8;&#x662f;Java&#x4ee3;&#x7801;&#xff1a;
    </p>
    <p>
      &#x6b65;&#x9aa4;&#xff1a;
    </p>
    <p>
      1 &#x4f7f;&#x7528;ASM&#x6846;&#x67b6;&#x7f16;&#x7801;&#x751f;&#x6210;&#x6211;&#x4eec;&#x9700;&#x8981;&#x7684;&#x7a0b;&#x5e8f;&#x7684;&#x4e8c;&#x8fdb;&#x5236;&#x5b57;&#x8282;&#x7801;
    </p>
    <p>
      2 &#x52a0;&#x8f7d;&#x5b57;&#x8282;&#x7801;&#xff0c;&#x751f;&#x6210;Class&#x5b9e;&#x4f8b;
    </p>
    <p>
      3 &#x53cd;&#x5c04;&#x8c03;&#x7528;&#x7c7b;&#x7684;&#x65b9;&#x6cd5;
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
<node TEXT="onMethodEnter()" ID="ID_1214658210" CREATED="1623675792354" MODIFIED="1623675793770"/>
<node TEXT="onMethodExit(int opcode)" ID="ID_1761482475" CREATED="1623675794049" MODIFIED="1623675807592"/>
</node>
</node>
<node TEXT="场景" ID="ID_1004756482" CREATED="1623675969054" MODIFIED="1623675973739">
<node TEXT="打印方法入参" ID="ID_897602854" CREATED="1623675974715" MODIFIED="1623675990168"/>
<node TEXT="调用外部方法,如:参数校验" ID="ID_1801310280" CREATED="1623675990378" MODIFIED="1623676014339"/>
</node>
<node TEXT="案例：拓展已存在的两数求和class功能流程" ID="ID_1893473106" CREATED="1622706892384" MODIFIED="1622710966812"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#x6211;&#x4eec;&#x5199;&#x7684;&#x8fd8;&#x662f;Java&#x4ee3;&#x7801;&#xff1a;
    </p>
    <p>
      &#x6b65;&#x9aa4;&#xff1a;
    </p>
    <p>
      1 &#x4f7f;&#x7528;ASM&#x6846;&#x67b6;&#x7f16;&#x7801;&#x751f;&#x6210;&#x6211;&#x4eec;&#x9700;&#x8981;&#x7684;&#x7a0b;&#x5e8f;&#x7684;&#x4e8c;&#x8fdb;&#x5236;&#x5b57;&#x8282;&#x7801;
    </p>
    <p>
      2 &#x52a0;&#x8f7d;&#x5b57;&#x8282;&#x7801;&#xff0c;&#x751f;&#x6210;Class&#x5b9e;&#x4f8b;
    </p>
    <p>
      3 &#x53cd;&#x5c04;&#x8c03;&#x7528;&#x7c7b;&#x7684;&#x65b9;&#x6cd5;
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="Javaassist" ID="ID_64805459" CREATED="1622519124371" MODIFIED="1624197942685" LINK="http://www.javassist.org/tutorial/tutorial.html" STYLE="bubble"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000c0">&#22522;&#20110;ASM,&#26131;&#29992; </font>
    </p>
    <p>
      <font color="#0000c0">&#23436;&#20840;&#38544;&#34255;&#20102;&#23383;&#33410;&#30721;&#32534;&#30721;</font>
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <a http-equiv="content-type" content="text/html; charset=utf-8" href="https://github.com/jboss-javassist/javassist">https://github.com/jboss-javassist/javassist</a> 
    </p>
  </body>
</html>
</richcontent>
<node TEXT="入门" ID="ID_1205524433" CREATED="1624198807314" MODIFIED="1624199518508" STYLE="bubble">
<node TEXT="核心类" ID="ID_698988482" CREATED="1624199521193" MODIFIED="1624199644716" STYLE="fork">
<node TEXT="ClassPool" ID="ID_153665996" CREATED="1624198827233" MODIFIED="1624198832505"/>
<node TEXT="CtClass" ID="ID_101878006" CREATED="1624198835844" MODIFIED="1624199044052"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#37324;&#38754;&#30340;&#26041;&#27861;&#31867;&#20284;Java&#30340;Class&#30340;&#26041;&#27861;.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="CtMethod" ID="ID_284981848" CREATED="1624198839683" MODIFIED="1624198845047">
<node TEXT="MethodInfo" ID="ID_696379299" CREATED="1624199051563" MODIFIED="1624199062427">
<node TEXT="CodeAttribute" ID="ID_735274403" CREATED="1624199695759" MODIFIED="1624199696551">
<node TEXT="LocalVariableAttribute" ID="ID_1903726263" CREATED="1624532685851" MODIFIED="1624532686700"/>
</node>
</node>
</node>
<node TEXT="CtField" ID="ID_879389419" CREATED="1624198845424" MODIFIED="1624198859299"/>
<node TEXT="..." ID="ID_1796671274" CREATED="1624199865997" MODIFIED="1624199867076"/>
</node>
</node>
<node TEXT="应用" ID="ID_1206489922" CREATED="1624199499797" MODIFIED="1624199513299" STYLE="bubble">
<node TEXT="热更新 HotSwapper" ID="ID_906045760" CREATED="1624534534455" MODIFIED="1624534589541"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000c0">基于JPDA HotSwap机制实现</font>
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="字节码插桩实现监控以及异常处理" ID="ID_358836621" CREATED="1624199556161" MODIFIED="1624200285898"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000"><b>&#20351;&#29992;javassist&#20026;&#26041;&#27861;&#28155;&#21152;&#30417;&#25511;&#20197;&#21450;&#24322;&#24120;&#22788;&#29702; </b></font>
    </p>
    <p>
      
    </p>
    <p>
      //&#25554;&#26729;&#21069;
    </p>
    <p>
      <font color="#cc7832">public class </font>ApiTest {<br/>&#160;&#160;&#160;&#160; <font color="#cc7832">public </font>Integer <font color="#ffc66d">strToInt</font>(String str01<font color="#cc7832">, </font>String str02) {<br/>&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#cc7832">return </font>Integer.<i>parseInt</i>(str01)<font color="#cc7832">;<br/>&#160;&#160;&#160;&#160; </font>}<br/>}
    </p>
    <p>
      
    </p>
    <p>
      //&#25554;&#26729;&#21518;
    </p>
    <p>
      <font color="#cc7832">public class </font>ApiTest {<br/>&#160;&#160;&#160;&#160; <font color="#cc7832">public </font><font color="#ffc66d">ApiTest</font>() {<br/>&#160;&#160;&#160;&#160;}<br/><br/>&#160;&#160;&#160;&#160; <font color="#cc7832">public </font>Integer <font color="#ffc66d">strToInt</font>(String str01<font color="#cc7832">, </font>String str02) {<br/>&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#cc7832">try </font>{<br/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#cc7832">long </font>startNanos = System.<i>nanoTime</i>()<font color="#cc7832">;<br/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </font>Object[] parameterValues = <font color="#cc7832">new </font>Object[]{str01<font color="#cc7832">, </font>str02}<font color="#cc7832">;<br/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </font>Integer var7 = Integer.<i>parseInt</i>(str01)<font color="#cc7832">;<br/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </font>Monitor.point(<font color="#6897bb">0</font><font color="#cc7832">, </font>startNanos<font color="#cc7832">, </font>parameterValues<font color="#cc7832">, </font>var7)<font color="#cc7832">;<br/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return </font>var7<font color="#cc7832">;<br/>&#160; &#160;&#160;&#160;&#160;&#160;&#160; </font>} <font color="#cc7832">catch </font>(Exception var9) {<br/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Monitor.point(<font color="#6897bb">0</font><font color="#cc7832">, </font>var9)<font color="#cc7832">;<br/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;throw </font>var9<font color="#cc7832">;<br/>&#160; &#160;&#160;&#160;&#160;&#160;&#160; </font>}<br/>&#160;&#160;&#160;&#160;}<br/>}
    </p>
  </body>
</html>
</richcontent>
<node TEXT="插桩核心方法" ID="ID_1899473994" CREATED="1624532287479" MODIFIED="1624532595611"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000c0">和AOP通知类似, </font>
    </p>
    <p>
      <font color="#0000c0">应该是同宗同源的</font>
    </p>
  </body>
</html>

</richcontent>
<node TEXT="CtMethod::insertBefore" ID="ID_803334847" CREATED="1624532347429" MODIFIED="1624532514626"/>
<node TEXT="CtMethod::insertAfter" ID="ID_1698582816" CREATED="1624532383013" MODIFIED="1624532522547"/>
<node TEXT="CtMethod::addCatch" ID="ID_1176186632" CREATED="1624532412100" MODIFIED="1624532528461"/>
</node>
</node>
</node>
</node>
<node TEXT="Byte Buddy" ID="ID_1416223891" CREATED="1622519133634" MODIFIED="1623858126825" STYLE="bubble"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000c0">&#22522;&#20110;ASM,&#26131;&#29992;</font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.2 Java调试&#xa;技术发展史" ID="ID_39628889" CREATED="1624533408559" MODIFIED="1624593709659" STYLE="bubble"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000c0">包含一些探针、 </font>
    </p>
    <p>
      <font color="#0000c0">热更新等技术</font>
    </p>
  </body>
</html>

</richcontent>
<node TEXT="发展史及相关概念的关系" ID="ID_191091673" CREATED="1624591038391" MODIFIED="1624594193416" STYLE="bubble"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <a http-equiv="content-type" content="text/html; charset=utf-8" href="https://blog.csdn.net/productshop/article/details/50623626"><font color="#000000">JAVA Instrumentation</font>&nbsp;https://blog.csdn.net/productshop/article/details/50623626</a>&nbsp;
    </p>
    <p>
      浅谈JPDA中JVMTI模块 <a http-equiv="content-type" content="text/html; charset=utf-8" href="https://www.jianshu.com/p/90ad6a8960fe">https://www.jianshu.com/p/90ad6a8960fe</a>&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      <b>JPDA</b>是Java平台调试架构， 是我们通向虚拟机，考察虚拟机运行态的一个通道，一套工具，包含一整套用于调试的工具、接口和协议。
    </p>
    <p>
      JPDA有三个层次组成由低到高分别是 Java 虚拟机工具接口（<b>JVMTI</b>），Java 调试协议（<b>JDWP</b>）以及 Java 调试接口（<b>JDI</b>）。
    </p>
    <p>
      这三个模块把调试过程分解成几个很自然的概念：调试者（debugger，对应JVMTI）和被调试者（debuggee），以及他们中间的通信器。
    </p>
    <p>
      
    </p>
    <p>
      所以<b>JVMTI</b>就是执行调试等功能的入口。通过这些接口，开发人员不仅调试在该虚拟机上运行的 Java 程序，还能 查看它们运行的状态，设置回调函数，控制某些环境变量，从而优化程序性能。
    </p>
    <p>
      JVMTI（JVM Tool Interface）是 Java 虚拟机所提供的 <b>native</b>&nbsp;编程接口，是JDK1.5之前 <b>JVMPI</b>（Java Virtual Machine Profiler Interface）和 <b>JVMDI</b>（Java Virtual Machine Debug Interface）的替代版本。
    </p>
    <div http-equiv="content-type" content="text/html; charset=utf-8" charset="utf-8">
      <div>
        <p>
          JVMTI 的功能非常丰富，包含了 <strong>虚拟机中线程、内存 / 堆 / 栈，类 / 方法 / 变量，事件 / 定时器处理等等</strong>&nbsp;20 多类功能，从功能上大致可以分为4类，如下：
        </p>
        <blockquote>
          <ol>
            <li>
              <strong>Heap</strong>：获取所有类的信息，对象信息，对象引用关系，Full GC开始/结束，对象回收事件等；
            </li>
            <li>
              <strong>线程与堆栈</strong>：获取所有线程的信息，线程组信息，控制线程（start,suspend,resume,interrupt…）, Thread Monitor(Lock)，得到线程堆栈，控制出栈，方法强制返回，方法栈本地变量等；
            </li>
            <li>
              <strong>Class &amp; Object &amp; Method &amp; Field 元信息</strong>：class信息，符号表，方法表，redefine class（hotswap）, retransform class，object信息，fields信息，method信息等；
            </li>
            <li>
              <strong>工具类</strong>：线程cpu消耗，classloader路径修改，系统属性获取等；
            </li>
          </ol>
        </blockquote>
      </div>
    </div>
    <p>
      有了调试平台和面向开发者的接口，如何使用呢？毕竟是native接口，为了方便使用官方还提供了一个<b>JavaAgent</b>的jar包。
    </p>
    <p>
      <b>JavaAgent</b>&nbsp;是一个特殊的 jar 包，它并不能单独启动的，而必须依附于一个 JVM 进程，可以看作是 JVM 的一个寄生插件，使用 Instrumentation 的 API 用来读取和改写当前 JVM 的类文件。
    </p>
    <p>
      
    </p>
    <p>
      <b>Instrumentation</b>(&quot;仪表&quot;) 和<b>&nbsp;Attach API&nbsp;</b>是一组接口，用于开发独立于应用程序之外的代理（agent）程序来监测和协助运行在JVM上的应用程序。
    </p>
    <p>
      Java SE5 Instrumentation <b>premain</b>&nbsp;方式要求开发者在应用前就必须确认代理的处理逻辑和参数内容等等，在有些场合下，这是比较苦难的。
    </p>
    <p>
      比如正常的生产环境下，一般不会开启代理功能，但是在发生问题时，我们不希望停止应用就能够动态的去修改一些类的行为，以帮助排查问题，这在应用启动前是无法确定的。
    </p>
    <p>
      为解决<b>运行时启动代理类的问题</b>，Java SE6开始，提供了在应用程序的VM启动后在动态添加代理的方式，即<b>agentmain</b>方式。
    </p>
    <p>
      
    </p>
    <p>
      不过如此设计在运行时进行代理有个问题——如何在应用程序启动之后再开启代理程序呢？ JDK6中提供了<b>Java Tools API</b>，其中<b>Attach API</b>可以满足这个需求。
    </p>
    <p>
      Attach API位于$JAVA_HOME/lib/<b>tools.jar</b>
    </p>
  </body>
</html>

</richcontent>
<node TEXT="JPDA docs" ID="ID_1642743125" CREATED="1624594288992" MODIFIED="1624594303068" LINK="https://docs.oracle.com/javase/7/docs/technotes/guides/jpda/index.html"/>
<node TEXT="JPDA、JVMTI、JavaAgent、Instrumentation、&#xa;Java Tools API、Attach API、tools.jar" ID="ID_784587851" CREATED="1624592683194" MODIFIED="1624594552369"/>
</node>
<node TEXT="JVM方案" ID="ID_440359652" CREATED="1624536521681" MODIFIED="1624536529612" STYLE="bubble">
<node TEXT="1.4 JPDA HotSwap机制" ID="ID_1252726771" CREATED="1624533455526" MODIFIED="1624592948203" LINK="https://docs.oracle.com/javase/8/docs/technotes/guides/jpda/enhancements1.4.html#hotswap" STYLE="bubble"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Java Platform Debugger Architecture 是 java IDE 调试的基础。 JPDA，它是我们通向虚拟机，考察虚拟机运行态的一个通道，一套工具 。
    </p>
    <p>
      
    </p>
    <p>
      这一新功能封装了通过调试器 API 替换正在运行的应用程序中的代码的能力。例如，可以重新编译单个类并用新实例替换旧实例。
    </p>
    <p>
      
    </p>
    <p>
      HotSwap向Java平台调试器体系结构(JPDA)添加了允许在调试器控制下更新类的功能。该功能的两个核心组件是redefineclass，它取代了类定义，以及PopFrame，它从堆栈中弹出帧，允许重新定义的方法被重新执行。
    </p>
    <p>
      
    </p>
    <p>
      在参考实现中，此功能在Java虚拟机调试接口（JVMDI）层中实现，并通过较高的JPDA - Java调试线协议（JDWP）和Java Debug接口（JDI）提供。
    </p>
  </body>
</html>

</richcontent>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000c0">仅能更新方法体</font>
    </p>
  </body>
</html>

</richcontent>
<node TEXT="目的" ID="ID_347617357" CREATED="1624534314721" MODIFIED="1624534321653">
<node TEXT="为了支持IDE可以在原来的进程上修复问题后继续代码调试" ID="ID_1086399190" CREATED="1624534029656" MODIFIED="1624534294959"/>
<node TEXT="希望可以修复长期运行的服务器的错误而不重启" ID="ID_1860794761" CREATED="1624534323615" MODIFIED="1624534359424"/>
</node>
<node TEXT="开启JPDA" ID="ID_383064585" CREATED="1624534890650" MODIFIED="1624534965215"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      -agentlib:jdwp=transport=dt_socket,address=8000,server=y,suspend=n
    </p>
    <p>
      
    </p>
    <p>
      然后就可以修改方法体了。
    </p>
    <p>
      但仅能修改方法体，不能增加修改方法、field。
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="问题：运行时可通过HotSwap端口更新，但是自己测试通过外部更新失败" ID="ID_1166232779" CREATED="1624588251813" MODIFIED="1624588354938">
<icon BUILTIN="help"/>
</node>
</node>
<node TEXT="JavaAgent" ID="ID_951880071" CREATED="1624540157368" MODIFIED="1624592237085" STYLE="bubble"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      启动时加载的 JavaAgent 是 JDK1.5 之后引入的新特性，此特性为用户提供了在 JVM 将字节码文件读入内存之后，JVM 使用对应的字节流在 Java 堆中生成一个 Class 对象之前，用户可以对其字节码进行修改的能力，从而 JVM 也将会使用用户修改过之后的字节码进行 Class 对象的创建。
    </p>
    <p>
      
    </p>
    <p>
      Javaagent 是一个特殊的 jar 包，它并不能单独启动的，而必须依附于一个 JVM 进程，可以看作是 JVM 的一个寄生插件，使用 Instrumentation 的 API 用来读取和改写当前 JVM 的类文件。
    </p>
  </body>
</html>

</richcontent>
<node TEXT="1.5 JVMTI Instrumentation premain()" ID="ID_512501160" CREATED="1624533477309" MODIFIED="1624592340670" STYLE="bubble"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000c0">JVM<b>启动时</b>修改class文件,需要预设更新逻辑(并不是热更新)</font>
    </p>
    <p>
      <font color="#0000c0">仅能更新方法体 </font>
    </p>
  </body>
</html>

</richcontent>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &nbsp;JVM 启动的时候添加一个代理（javaagent），每个代理是一个 jar 包，其 MANIFEST.MF 文件里指定了代理类，这个代理类包含一个 premain 方法。JVM 在类加载时候会先执行代理类的 premain 方法，再执行 Java 程序本身的 main 方法，这就是 premain 名字的来源。在 premain 方法中可以对加载前的 class 文件进行修改。
    </p>
  </body>
</html>

</richcontent>
<node TEXT="本质上是重载通过ASM等工具修改的class字节流" ID="ID_750793875" CREATED="1623677445742" MODIFIED="1624594502881"/>
<node TEXT="基本使用" ID="ID_1167762837" CREATED="1623677079471" MODIFIED="1623677083907">
<node TEXT="1) 编写 premain 启动类, 用于注入下面定义的类转换器" ID="ID_695928063" CREATED="1623677387841" MODIFIED="1623678459504"/>
<node TEXT="2) 编写类转换器,里面定义类过滤(对哪些类进行修改)以及增强逻辑(比如在类中添加监控逻辑)" ID="ID_608518914" CREATED="1623677398233" MODIFIED="1623856336996">
<node TEXT=" byte[] classfileBuffer 入参是源字节码文件,就是在它的基础上修改字节码" ID="ID_34846549" CREATED="1623856531832" MODIFIED="1623856776781"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000c0">&#21487;&#20197;&#38543;&#24847;&#20351;&#29992;ASM/Javaassist/ByteBuddy&#31561;&#24037;&#20855;&#20462;&#25913;&#26368;&#21518;&#20462;&#25913;&#21518;&#30340;byte&#25968;&#32452;</font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="3) 编写MAINIFEST.MF主要定义Agent入口" ID="ID_1088949933" CREATED="1623677581518" MODIFIED="1623856478614"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Manifest-Version: 1.0
    </p>
    <p>
      Premain-Class: org.itstack.sqm.asm.PreMain
    </p>
    <p>
      Can-Redefine-Classes: true
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="4) 打包(jar)并在 jvm 启动时增加-javaagent:xxx.jar" ID="ID_1924482976" CREATED="1623677611245" MODIFIED="1623677652490"/>
</node>
<node TEXT="应用" ID="ID_1228572094" CREATED="1623857494461" MODIFIED="1623857497792">
<node TEXT="添加性能监控, 查看方法入参返回值,异常信息,输出日志" ID="ID_359546550" CREATED="1623857499810" MODIFIED="1623857907164"/>
<node TEXT="重新加载类,替换方法" ID="ID_1862843451" CREATED="1623857518659" MODIFIED="1623857880063"/>
</node>
<node TEXT="文档" ID="ID_814189471" CREATED="1623678480495" MODIFIED="1623678483844">
<node TEXT="API官方文档" ID="ID_90847332" CREATED="1623678147962" MODIFIED="1624592124454" LINK="https://docs.oracle.com/javase/7/docs/api/java/lang/instrument/package-summary.html"/>
<node TEXT="其他" ID="ID_834379984" CREATED="1623678485467" MODIFIED="1623678514643"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      JavaAgent &#21407;&#29702;&#19982;&#23454;&#36341;
    </p>
    <p>
      <a http-equiv="content-type" content="text/html; charset=utf-8" href="https://www.infoq.cn/article/fH69pYPqZPF6Cj1UJy7X">https://www.infoq.cn/article/fH69pYPqZPF6Cj1UJy7X</a> 
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="1.6 JVMTI Instrumentation agentmain() + Attach API" ID="ID_659436412" CREATED="1624533513997" MODIFIED="1624592354169" STYLE="bubble"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      agentmain热更新的原理
    </p>
    <p>
      
    </p>
    <p>
      为了实现Java进程A与进程B之间的本地通信，热更新的JVM进程使用VirutalMachine.attach(pid)来连接需要热更新的JVM进程，然后使用virtualMachine.loadAgent加载自定义的agent。这个通信通道成功建立之后，那么进程A就能通知进程B去执行某些操作，从而达到监控进程B或者控制进程B的某些行为的目的。如jstack、jmap等JDK自带的工具，基本都是通过Attach机制去达成各自想要的目的的。
    </p>
  </body>
</html>

</richcontent>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000c0">针对JVM<b>运行时</b>(Runtime)更新</font>
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node TEXT="第三方工具" ID="ID_1653598211" CREATED="1624536250910" MODIFIED="1624536549473" STYLE="bubble">
<node TEXT="Dexposed" ID="ID_1237795937" CREATED="1624536266804" MODIFIED="1624536277134" STYLE="bubble"/>
<node TEXT="Arthas的热更新" ID="ID_629206996" CREATED="1624536410083" MODIFIED="1624536428868" STYLE="bubble"/>
</node>
<node TEXT="附录" ID="ID_284936427" CREATED="1624594627271" MODIFIED="1624594632366" STYLE="bubble">
<node TEXT="agent jar manifest属性" ID="ID_1156066282" CREATED="1624594633334" MODIFIED="1624594665945"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Premain-Class: 当在VM启动时，在命令行中指定代理jar时，必须在manifest中设置Premain-Class属性，值为代理类全类名，并且该代理类必须提供premain方法。否则JVM会异常终止。
    </p>
    <p>
      Agent-Class: 当在VM启动之后，动态添加代理jar包时，代理jar包中manifest必须设置Agent-Class属性，值为代理类全类名，并且该代理类必须提供agentmain方法，否则无法启动该代理。
    </p>
    <p>
      Boot-Class-Path: Bootstrap class loader加载类时的搜索路径，可选。
    </p>
    <p>
      Can-Redefine-Classes: true/false；标示代理类是否能够重定义类。可选。
    </p>
    <p>
      Can-Retransform-Classes: true/false；标示代理类是否能够转换类定义。可选。
    </p>
    <p>
      Can-Set-Native-Prefix::true/false；标示代理类是否需要本地方法前缀，可选。&#xd;
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node TEXT="2.3 字节码编程&#xa;应用" ID="ID_467831461" CREATED="1622960987451" MODIFIED="1623676252433" STYLE="bubble">
<node TEXT="AspectJ" ID="ID_18268467" CREATED="1622726103052" MODIFIED="1622961061217" STYLE="bubble"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      AspectJ Document<a http-equiv="content-type" content="text/html; charset=utf-8" href="https://www.eclipse.org/aspectj/docs.php">
</a>    </p>
    <p>
      <a http-equiv="content-type" content="text/html; charset=utf-8" href="https://www.eclipse.org/aspectj/docs.php">https://www.eclipse.org/aspectj/docs.php</a>&#160;
    </p>
    <p>
      github
    </p>
    <p>
      <a http-equiv="content-type" content="text/html; charset=utf-8" href="https://github.com/eclipse/org.aspectj">https://github.com/eclipse/org.aspectj</a> 
    </p>
    <p>
      The AspectJ Programming Guide
    </p>
    <p>
      <a http-equiv="content-type" content="text/html; charset=utf-8" href="https://www.eclipse.org/aspectj/doc/released/progguide/index.html">https://www.eclipse.org/aspectj/doc/released/progguide/index.html</a>&#160;
    </p>
    <p>
      <a http-equiv="content-type" content="text/html; charset=utf-8" href="https://www.eclipse.org/aspectj/doc/released/runtime-api/index.html">https://www.eclipse.org/aspectj/doc/released/runtime-api/index.html</a>&#160;
    </p>
    <p>
      
    </p>
    <p>
      AspectJ&#22312;&#32534;&#35793;&#30340;&#26102;&#20505;&#23601;&#26893;&#20837;&#20195;&#30721;&#21040;class&#25991;&#20214;&#65292;&#23383;&#33410;&#30721;&#25805;&#20316;&#26159;&#20854;&#32534;&#35793;&#22120;&#23454;&#29616;&#30340;&#12290;
    </p>
  </body>
</html>
</richcontent>
<node TEXT="连接点捕获" ID="ID_1846888269" CREATED="1623473421609" MODIFIED="1623473465233">
<node TEXT="方法" ID="ID_55641894" CREATED="1623473467178" MODIFIED="1623484466341"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#36830;&#25509;&#28857;&#21253;&#25324;&#35843;&#29992;&#26041;&#27861;,&#25191;&#34892;&#26041;&#27861;
    </p>
    <p>
      call()
    </p>
    <p>
      execute()
    </p>
  </body>
</html>
</richcontent>
<node TEXT="捕获方法上传参" ID="ID_1254917717" CREATED="1623473500050" MODIFIED="1623473527008"/>
<node TEXT="捕获调用目标" ID="ID_40403696" CREATED="1623475247526" MODIFIED="1623475261149"/>
</node>
<node TEXT="异常" ID="ID_1612856911" CREATED="1623481726893" MODIFIED="1623484472346"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      handler()&#36830;&#25509;&#28857;&#65292;&#25351;&#30340;&#26159;catch()&#22359;.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="捕获catch()异常" ID="ID_1971585417" CREATED="1623484323421" MODIFIED="1623484337133"/>
<node TEXT="捕获catch()异常的this对象" ID="ID_1975992672" CREATED="1623484337599" MODIFIED="1623484373660"/>
</node>
<node TEXT="通知" ID="ID_76687242" CREATED="1623484289703" MODIFIED="1623484515429"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#36890;&#30693;&#19978;&#30340;&#36830;&#25509;&#28857;
    </p>
    <p>
      adviceexecution()
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="类构造和初始化" ID="ID_1542725871" CREATED="1623484599015" MODIFIED="1623583680115"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#21152;&#36733; &#38142;&#25509;(&#39564;&#35777;\&#20934;&#22791;\&#35299;&#26512;) &#21021;&#22987;&#21270;
    </p>
    <p>
      
    </p>
    <p>
      call()
    </p>
    <p>
      execute()
    </p>
    <p>
      initialization()
    </p>
    <p>
      preinitialization()
    </p>
    <p>
      staticinitialization()
    </p>
  </body>
</html>
</richcontent>
<node TEXT="捕获对构造函数的调用" ID="ID_793412116" CREATED="1623580565313" MODIFIED="1623580579806"/>
<node TEXT="捕获构造函数的执行" ID="ID_1258196982" CREATED="1623581767092" MODIFIED="1623581774970"/>
<node TEXT="捕获对象初始化" ID="ID_976675695" CREATED="1623581775389" MODIFIED="1623581782813"/>
<node TEXT="捕获对象初始化之前" ID="ID_1733514061" CREATED="1623582720381" MODIFIED="1623582733074"/>
<node TEXT="捕获类初始化" ID="ID_1647300141" CREATED="1623582733655" MODIFIED="1623582864953"/>
</node>
<node TEXT="属性访问" ID="ID_32991385" CREATED="1623484608190" MODIFIED="1623650147637"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      get()
    </p>
    <p>
      set()
    </p>
  </body>
</html>
</richcontent>
<node TEXT="捕获对象属性的访问" ID="ID_1861251294" CREATED="1623583574968" MODIFIED="1623583601712"/>
</node>
<node TEXT="作用域内连接点" ID="ID_717072544" CREATED="1623484652886" MODIFIED="1623650194167"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      within()
    </p>
    <p>
      withincode()
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_836375283" CREATED="1623642807032" MODIFIED="1623643356982"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#25429;&#33719;&#29305;&#23450;&#31867;&#20013;&#30340;<b>&#25152;&#26377;</b>&#36830;&#25509;&#28857;
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      pointcut withinMyClass() : within(MyClass1);
    </p>
    <p>
      
    </p>
    <p>
      within&#19981;&#20165;&#20165;&#21482;&#26159;&#38480;&#23450;&#20316;&#29992;&#22495;,&#23427;&#20195;&#34920;&#36825;&#20010;&#20316;&#29992;&#22495;&#19979;&#25152;&#26377;&#36830;&#25509;&#28857;.
    </p>
    <p>
      &#19978;&#38754;&#30340;&#20889;&#27861;&#20250;&#21152;&#36827;&#21435;&#19968;&#22534;&#20999;&#28857;.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="捕获特定包中所有连接点" ID="ID_1319133911" CREATED="1623642831895" MODIFIED="1623643148039"/>
<node TEXT="捕获特定方法内所有连接点" ID="ID_429716356" CREATED="1623643158564" MODIFIED="1623643169152"/>
</node>
<node TEXT="控制流" ID="ID_694879583" CREATED="1623484688067" MODIFIED="1623650072796"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      cflow()
    </p>
    <p>
      cflowbelow()
    </p>
  </body>
</html>
</richcontent>
<node TEXT="捕获通过初始连接点开始的程序控制流程内的所有连接点" ID="ID_257202073" CREATED="1623647407546" MODIFIED="1623649123875"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#21442;&#32771; package top.kwseeker.aspectj.joinpoint.flow;
    </p>
    <p>
      
    </p>
    <p>
      &#25429;&#33719;&#20102;&#19979;&#38754;&#30340;&#36830;&#25509;&#28857;
    </p>
    <p>
      -------------- Aspect Advice: flow --------------
    </p>
    <p>
      call(public void top.kwseeker.aspectj.joinpoint.flow.MyClass1.foo())
    </p>
    <p>
      ------------------------------------------------------
    </p>
    <p>
      -------------- Aspect Advice: flow --------------
    </p>
    <p>
      execution(public void top.kwseeker.aspectj.joinpoint.flow.MyClass1.foo())
    </p>
    <p>
      ------------------------------------------------------
    </p>
    <p>
      -------------- Aspect Advice: flow --------------
    </p>
    <p>
      get(public static final java.io.PrintStream java.lang.System.out)
    </p>
    <p>
      ------------------------------------------------------
    </p>
    <p>
      -------------- Aspect Advice: flow --------------
    </p>
    <p>
      call(public void java.io.PrintStream.println(java.lang.String))
    </p>
    <p>
      ------------------------------------------------------
    </p>
    <p>
      foo() ...
    </p>
    <p>
      -------------- Aspect Advice: flow --------------
    </p>
    <p>
      call(public top.kwseeker.aspectj.joinpoint.flow.MyClass1(int))
    </p>
    <p>
      ------------------------------------------------------
    </p>
    <p>
      -------------- Aspect Advice: flow --------------
    </p>
    <p>
      preinitialization(public top.kwseeker.aspectj.joinpoint.flow.MyClass1(int))
    </p>
    <p>
      ------------------------------------------------------
    </p>
    <p>
      -------------- Aspect Advice: flow --------------
    </p>
    <p>
      initialization(public top.kwseeker.aspectj.joinpoint.flow.MyClass1(int))
    </p>
    <p>
      ------------------------------------------------------
    </p>
    <p>
      -------------- Aspect Advice: flow --------------
    </p>
    <p>
      execution(public top.kwseeker.aspectj.joinpoint.flow.MyClass1(int))
    </p>
    <p>
      ------------------------------------------------------
    </p>
    <p>
      -------------- Aspect Advice: flow --------------
    </p>
    <p>
      set(int top.kwseeker.aspectj.joinpoint.flow.MyClass1.sign)
    </p>
    <p>
      ------------------------------------------------------
    </p>
    <p>
      -------------- Aspect Advice: flow --------------
    </p>
    <p>
      call(public void top.kwseeker.aspectj.joinpoint.flow.MyClass1.bar())
    </p>
    <p>
      ------------------------------------------------------
    </p>
    <p>
      -------------- Aspect Advice: flow --------------
    </p>
    <p>
      execution(public void top.kwseeker.aspectj.joinpoint.flow.MyClass1.bar())
    </p>
    <p>
      ------------------------------------------------------
    </p>
    <p>
      -------------- Aspect Advice: flow --------------
    </p>
    <p>
      get(public static final java.io.PrintStream java.lang.System.out)
    </p>
    <p>
      ------------------------------------------------------
    </p>
    <p>
      -------------- Aspect Advice: flow --------------
    </p>
    <p>
      call(public void java.io.PrintStream.println(java.lang.String))
    </p>
    <p>
      ------------------------------------------------------
    </p>
    <p>
      bar() ...
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="捕获通过初始连接点开始的程序控制流程内的所有连接点,但不包括初始连接点" ID="ID_1557428320" CREATED="1623647437721" MODIFIED="1623650056333"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      cflowbelow() &#21644; cflow() &#30456;&#27604;&#23569;&#20102;&#19968;&#20010;&#21021;&#22987;&#36830;&#25509;&#28857;.
    </p>
    <p>
      
    </p>
    <p>
      -------------- Aspect Advice: flow --------------
    </p>
    <p>
      call(public void top.kwseeker.aspectj.joinpoint.flow.MyClass1.foo())
    </p>
    <p>
      ------------------------------------------------------
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="对象类型" ID="ID_380063153" CREATED="1623484703096" MODIFIED="1623671118711"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      this()
    </p>
    <p>
      target()
    </p>
    <p>
      args()
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="连接点组合" ID="ID_1840404832" CREATED="1623484707280" MODIFIED="1623484737914">
<node TEXT="布尔或复合连接点" ID="ID_659145071" CREATED="1623670592049" MODIFIED="1623670752572"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      if
    </p>
    <p>
      &amp;&amp;
    </p>
    <p>
      ||
    </p>
    <p>
      !
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="匿名切点" ID="ID_918483014" CREATED="1623670967516" MODIFIED="1623671009496"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#30452;&#25509;&#21152;&#21040;&#36890;&#30693;&#22768;&#26126;&#19978;&#20999;&#28857;
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="重用切点" ID="ID_1524966738" CREATED="1623671024155" MODIFIED="1623671079379"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#23601;&#26159;&#20351;&#29992;pointcut &#21629;&#21517;&#19968;&#20010;&#20999;&#28857;&#23450;&#20041;,&#22312;&#20854;&#20182;&#38656;&#35201;&#37325;&#29992;&#23427;&#30340;&#22320;&#26041;&#20351;&#29992;&#21517;&#31216;&#24341;&#29992;&#23427;.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="定义通知" ID="ID_1888067847" CREATED="1623484754457" MODIFIED="1623484759385">
<node TEXT="可通过切点声明将参数传递给通知" ID="ID_1236867310" CREATED="1623671370968" MODIFIED="1623671521129"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#22914;:
    </p>
    <p>
      args(int value);
    </p>
    <p>
      this(MyClass obj);
    </p>
    <p>
      target(MyClass obj);
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="可访问连接点环境" ID="ID_1401371963" CREATED="1623671422549" MODIFIED="1623671457707"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      thisJoinPoint
    </p>
    <p>
      thisJoinPointStaticPart
    </p>
    <p>
      ...
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="通知的五种类型" ID="ID_1742393468" CREATED="1623671549043" MODIFIED="1623672034991"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      before()
    </p>
    <p>
      aroud()&#160;&#160;&#20511;&#29992;proceed()&#25191;&#34892;&#21407;&#22987;&#36923;&#36753;
    </p>
    <p>
      after()
    </p>
    <p>
      after() returning &#27491;&#24120;&#36820;&#22238;&#20043;&#21518;&#25191;&#34892;
    </p>
    <p>
      after() throwing &#25110; after() throwing(ExceptionType | Identifier)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="通知执行优先级" ID="ID_1628968422" CREATED="1623672035246" MODIFIED="1623672041068">
<node TEXT="declare precedence : AspectA, AspectB;" ID="ID_435707155" CREATED="1623672048859" MODIFIED="1623672094071"/>
<node TEXT="默认优先级规则" ID="ID_387910021" CREATED="1623672098369" MODIFIED="1623672545778"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#21516;&#19968;&#20010;&#36830;&#25509;&#28857;,&#30456;&#21516;&#31867;&#22411;&#30340;&#36890;&#30693;,&#27604;&#22914;&#20004;&#20010;before() &#25110;&#20004;&#20010; around() , &#20808;&#23450;&#20041;&#20808;&#25191;&#34892;,
    </p>
    <p>
      after(), after() returning , after throwing &#21017;&#30456;&#21453;.
    </p>
    <p>
      <br/>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="定义方面" ID="ID_1174990541" CREATED="1623672695161" MODIFIED="1623672700133">
<node TEXT="单例方面" ID="ID_143727477" CREATED="1623672701410" MODIFIED="1623672708019"/>
<node TEXT="每个实例一个方面" ID="ID_1878617720" CREATED="1623672708213" MODIFIED="1623672721676"/>
<node TEXT="每个控制流一个方面" ID="ID_1399529668" CREATED="1623672722050" MODIFIED="1623672736589"/>
</node>
<node TEXT="使用设计模式&#xa;定义方面" ID="ID_598159834" CREATED="1623484901953" MODIFIED="1623673298701"/>
</node>
<node TEXT="Spring AOP" ID="ID_1781623934" CREATED="1622960968327" MODIFIED="1622961061984" STYLE="bubble"/>
<node TEXT="附：AOP应用场景" ID="ID_1729925695" CREATED="1623479126100" MODIFIED="1623485341333" STYLE="bubble">
<node TEXT="增强类和编译器" ID="ID_1595432284" CREATED="1623485033414" MODIFIED="1623485039729">
<node TEXT="方法参数校验" ID="ID_1288655349" CREATED="1623485061574" MODIFIED="1623485168380"/>
<node TEXT="单元测试添加模拟组件" ID="ID_533190874" CREATED="1623485275457" MODIFIED="1623485286245"/>
</node>
<node TEXT="修改类实例对象" ID="ID_550949685" CREATED="1623485208121" MODIFIED="1623485220316"/>
<node TEXT="请求上下文发布" ID="ID_1939279195" CREATED="1623479144607" MODIFIED="1623479154593"/>
<node TEXT="链路追踪" ID="ID_1313905873" CREATED="1623485344661" MODIFIED="1623485393393"/>
<node TEXT="日志记录" ID="ID_947473029" CREATED="1623485395106" MODIFIED="1623485398011"/>
<node TEXT="应用延迟加载" ID="ID_798072403" CREATED="1623485411769" MODIFIED="1623485423695"/>
<node TEXT="管理应用属性" ID="ID_932765904" CREATED="1623485466998" MODIFIED="1623485477366"/>
<node TEXT="实现事务控制" ID="ID_1516518840" CREATED="1623485534580" MODIFIED="1623485545177"/>
<node TEXT="安全策略管理" ID="ID_175807729" CREATED="1623485538552" MODIFIED="1623485617581"/>
<node TEXT="..." ID="ID_1805358835" CREATED="1623485849668" MODIFIED="1623485851372"/>
</node>
<node TEXT="手写AOP框架" ID="ID_1274859619" CREATED="1623475140870" MODIFIED="1623475170078" STYLE="bubble"/>
<node TEXT="手写链路追踪框架" ID="ID_455428484" CREATED="1623475191408" MODIFIED="1623475209440" STYLE="bubble"/>
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
      ASM&#x5e93;&#x7684;&#x76ee;&#x7684;&#x662f;&#x751f;&#x6210;&#x3001;&#x8f6c;&#x6362;&#x548c;&#x5206;&#x6790;&#x4ee5;&#x5b57;&#x8282;&#x6570;&#x7ec4;&#x8868;&#x793a;&#x7684;&#x5df2;&#x7f16;&#x8bd1;Java&#x7c7b;&#xff08;&#x5b83;&#x4eec;&#x5728;&#x78c1;&#x76d8;&#x4e2d;&#x7684;&#x5b58;&#x50a8;&#x548c;&#x5728;Java&#x865a;&#x62df;&#x673a;&#x4e2d;&#x7684;&#x52a0;&#x8f7d;&#x90fd;&#x91c7;&#x7528;&#x8fd9;&#x79cd;&#x5b57;&#x8282;&#x6570;&#x7ec4;&#x5f62;&#x5f0f;&#xff09;&#x3002;
    </p>
    <p>
      
    </p>
    <p>
      &#x8fd9;&#x4e2a;&#x94fe;&#x63a5;&#x662f;&#x5b98;&#x65b9;&#x6587;&#x6863;&#x7684;&#x4e2d;&#x6587;&#x624b;&#x518c;&#x3002;
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
      &#x5206;&#x95e8;&#x522b;&#x7c7b;&#x5730;&#x5217;&#x4e3e;&#x51fa;&#x4e0b;&#x9762;&#x5404;&#x4e2a;&#x90e8;&#x5206;&#x7684;&#x5185;&#x5bb9;&#xff1a;
    </p>
    <p>
      
    </p>
    <p>
      &#x4e00;&#x822c;&#x4fe1;&#x606f;
    </p>
    <p>
      &#x5e38;&#x91cf;&#x6c60;
    </p>
    <p>
      &#x63a5;&#x53e3;
    </p>
    <p>
      &#x5b57;&#x6bb5;
    </p>
    <p>
      &#x65b9;&#x6cd5;
    </p>
    <p>
      &#x5c5e;&#x6027;
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
      &#x53ef;&#x81ea;&#x52a8;&#x751f;&#x6210;&#x6e90;&#x7801;&#x5bf9;&#x5e94;&#x7684;ASM&#x5f00;&#x53d1;&#x7684;&#x4ee3;&#x7801;&#xff0c;&#x57fa;&#x672c;&#x4e0a;&#x5c31;&#x53ea;&#x9700;&#x8981;&#x4f1a;&#x6539;&#x5c31;&#x884c;&#x4e86;&#x3002;
    </p>
    <p>
      
    </p>
    <p>
      &#x53e6;&#x5916;&#x8fd8;&#x80fd;&#x751f;&#x6210;&#x5bf9;&#x5e94;&#x7684;&#x5b57;&#x8282;&#x7801;&#x3001;groovy&#x4ee3;&#x7801;&#x3002;
    </p>
    <p>
      
    </p>
    <p>
      <font color="#cc7832">package </font>org.itstack.demo.javassist<font color="#cc7832">;<br/></font><i><font color="#629755"><br/></font></i><font color="#cc7832">public class </font>HelloWorld {<br/>&nbsp;&nbsp;&nbsp; <font color="#cc7832">public static void </font><font color="#ffc66d">main</font>(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.<font color="#9876aa"><i>out</i></font>.println(<font color="#6a8759">&quot;hi javassist! Greetings from </font><font color="#6a8759" face="Noto Sans Mono CJK SC">&#x5c0f;&#x5085;&#x54e5;</font><font color="#6a8759">(bugstack.cn)&quot;</font>)<font color="#cc7832">;<br/>&nbsp;&nbsp;&nbsp;&nbsp; </font>}<br/>}
    </p>
    <p>
      
    </p>
    <p>
      <b>javap -c &#x53cd;&#x7f16;&#x8bd1;</b>&#xff1a;
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
      <font color="#0033cc">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3: ldc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// String hi javassist! Greetings from &#x5c0f;&#x5085;&#x54e5;(bugstack.cn) </font>
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
      <b>ASM Bytecode Outline &#x53cd;&#x7f16;&#x8bd1;</b>&#xff1a;
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
<node TEXT="其他" ID="ID_31727093" CREATED="1624165318306" MODIFIED="1624165321751">
<node TEXT="XCode ORM" ID="ID_1255308053" CREATED="1624164965806" MODIFIED="1624165341972"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#36825;&#20010;&#21482;&#26159;&#20010;&#25299;&#23637;. &#21644;&#21453;&#21521;&#24037;&#31243;&#27809;&#20160;&#20040;&#20851;&#31995;.
    </p>
    <p>
      
    </p>
    <p>
      &#19968;&#33324;&#37117;&#26159;&#20808;&#24314;&#34920;&#20877;&#20889;&#36923;&#36753;, XCode&#21487;&#20197;&#20808;&#20889;&#36923;&#36753;&#25191;&#34892;&#26102;&#24314;&#34920;.
    </p>
    <p>
      &#22312;&#19994;&#21153;&#37197;&#32622;&#31995;&#32479;&#20013;&#21487;&#33021;&#20250;&#26377;&#25152;&#20316;&#20026;.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</map>
