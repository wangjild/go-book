### BootStrap工具集

#### ASM编译器

Go源码中有部分底层代码是采用Plan9汇编语言编写的。Plan9汇编是一种与体系结构无关的语言，这个汇编语言的编译器有着良好的跨平台功能，能运行在MIPS，SPARK，Intel 386，ARM等平台。

关于ASM语言本身的详细说明我们可以在[这篇文档](http://plan9.bell-labs.com/sys/doc/asm.html)中找到。

下面我们只介绍编译器本身的功能和用法


*TODO 内容待补充*



#### Go编译器
Go编译器的代码位于src/cmd/compile，目录结构如下：
>
├── compile  
├── doc.go  
├── internal  
│   ├── amd64  
│   ├── arm  
│   ├── arm64  
│   ├── big  
│   ├── gc  
│   ├── ppc64  
│   └── x86  
└── main.go

与体系结构无关的代码位于compile/internal/gc下面。

进入编译阶段后，编译器大体上会做如下几件事情：
> 1. 初始化一些全局对象
> 2. 遍历每一个待编译的.go文件，并调用yyparse对他妈进行分析。go的词法分析器是手写的，代码在lex.go中，而语法分析器使用的是yacc。关于go的语法规则文件定义在go.y中，在编译compile期间会自动调用*go tool yacc go.y*来自动生成y.go代码
> 3. 完成语法分析后，每个.go源文件会生成一份抽象语法树(AST)。之后会对这些AST进行语义分析，抽象语法树最后会被编译成汇编(ASM)
> 4. 最后生成目标文件(.o)，并写入磁盘

*TODO 内容待补充*


#### 链接器

*TODO 内容待补充*
