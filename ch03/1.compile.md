## 3.1 Go程序编译过程
编程语言有很多种分类方法，比如按照编程范式可以分为过程式，面向对象，函数式，逻辑式；按照专用领域来分，又可以分为通用编程语言，数据描述语言(SQL)，页面描述语言(html)，硬件描述语言等；按照运行机制可以分为解释型，编译型。

Golang是一门类似于传统 C/C++ 的通用编译型语言。因此不同于其他解释型的脚本语言(Python, PHP)或者基于字节码的编译型语言(Java)，Golang程序需要经过编译和链接2个步骤：
	
1. 编译源码文件，生成obj目标文件(.o)
2. 链接各个.o文件和静态库，生成可执行文件

我们用一个最简单的go程序，来验证这一个过程：

```golang
package main

func test1() int {
    return 0
}

func main() {
    test1()
}
```

<center>ch02/src/zero.go</center>

我们用 go build 命令就能成功编译这个程序，此时会在当前目录下面生成一个名为zero的可执行文件。要想了解这个过程中到底发生了什么，需要更详细的信息。

幸好贴心的golang作者们替我们做好了这些事情：

	go build -x
	
我们可以看到编译过程所涉及到的步骤和命令，由此推导编译器和链接器是如何工作的：

    # 将Go源文件编译成目标文件
	$GOROOT/pkg/tool/darwin_amd64/compile \
		-o $WORK/runtime.a $WORK -p runtime \
		-D $GOROOT/src/runtime \
		$WORK/runtime/_obj/go_asm.h \
		./alg.go ./arch1_amd64.go ./arch_amd64.go \
		./atomic_amd64x.go ./cgo.go ./netpoll_epoll.go ./runtime.go ……
	
	# 将汇编源文件编译成中间文件
	$GOROOT/pkg/tool/darwin_amd64/asm \
		-o $WORK/runtime/_obj/asm.o \
		-I $GOROOT/pkg/include \
		-D GOOS_linux -D GOARCH_amd64 ./asm.s
		
	$GOROOT/pkg/tool/darwin_amd64/asm \
		-o $WORK/runtime/_obj/rt0_linux_amd64.o \
		-D GOOS_linux -D GOARCH_amd64 ./rt0_linux_amd64.s
	
	# 将obj中间文件打包成.a静态文件
	pack r $WORK/runtime.a $WORK/runtime/_obj/asm.o
	
	# 编译main文件
	$GOROOT/pkg/tool/darwin_amd64/compile -o \
		$GOPATH/zero.a -p main -complete -pack ./zero.go
	
	# 链接器将中间文件和静态库文件链接成可执行文件
	pkg/tool/darwin_amd64/link -o zero -L $WORK -extld=clang \
		-buildmode=exe ch03/zero.a
		

在上面的例子中，首先被编译的是runtime包。根据当前编译的平台，选择runtime包中对应的文件进行编译。由于go tool compile 支持直接将源码文件编译成静态链接文件，上面第一步编译后就直接生成了 runtime.a 包

因为runtime包中的源文件，有的是采用汇编语言编写的，所以还需要调用汇编编译器来编译。编译生成目标文件(obj)后，将go源码直接编译而来的runtime.a和这些目标文件重新打包，生成最终的runtime.a静态链接文件

接下来编译main文件，也是直接将源码文件直接编译打包成静态库。

最后一步，用链接器链接静态文件，生成可执行文件。