### 编译过程一览
go的编译安装过程非常简单，只需要执行cd go/src && ./all.bash即可完成.

我们从all.bash脚本开始，来浏览一下编译有哪些步骤，都是如何进行的:

> 1. all.bash 脚本只做了2件事情，首先调用make.bash脚本来编译go，然后调用run.bash脚本测试go标准库和相关命令来验证编译的正确性。
2. make.bash 首先验证编译环境是否健全，验证通过后跳转到第3步
3. 验证环境正确后，首先需要编译cmd/dist工具。cmd/dist的详细介绍见cmd/dist一节。
4. 然后利用cmd/dist的帮助，编译一个最小化版本的go_bootstrap命令。
5. go_bootstrap是一个不完整的go命令，只包含了一些最基本的包，其他包譬如cgo和net包等均不在此。再接着用go_bootstrap来编译完整的go标准库和go命令。自此make.bash执行完毕，go编译就完成了。脚本执行流程转回run.bash
6. run.bash 的任务是测试标准库，runtime库等。首先调用 go test -a std来测试标准库。接下来测试runtime包和cgo。最后再运行 go run test来执行 $GOROOT/test目录里面的一些测试case，这些case是针对编译器和运行时自身的，较为底层方面的细节测试。