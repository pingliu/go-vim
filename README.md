# Install
```bash
    $ docker run --name golang -v /tmp/share:/tmp/share -it ubuntu  bash
    $ apt-get update && apt-get install wget git make vim-gtk exuberant-ctags -y 
    $ cd
    $ git clone https://github.com/pingliu/go-vim.git
    $ cd go-vim && bash install.sh
    $ exit
    $ docker start golang
    $ docker exec -it golang bash
    $ wget https://go.dev/dl/go1.23.2.linux-arm64.tar.gz
    $ rm -rf /usr/local/go && tar -C /usr/local -xzf go1.23.2.linux-arm64.tar.gz
    $ vim .vimrc 
    $ vim命令行模式下执行GoInstallBinaries安装go tool
```

# vim-go 常用命令
## 代码导航和编辑
显示代码结构视图：:Tagbar

显示文件系统的树状视图，类似于文件管理器：:NERDTree

显示当前光标所在位置的函数或方法的详细信息，包括参数类型和返回值类型：:GoInfo

跳转到定义：:GoDef或者使用快捷键gd。

查找引用：:GoReferrers或者使用快捷键 gr。

查看文档：:GoDoc或者使用快捷键K。

查看接口实现：:GoImpl

查看类型信息：:GoTypeInfo

## 代码检查和格式化
运行代码检查：:GoLint或者使用快捷键 <leader>l。

运行代码格式化：:GoFmt或者使用快捷键 <leader>f。

运行代码验证：:GoVet或者使用快捷键 <leader>v。

## 构建和运行
构建项目：:GoBuild或者使用快捷键 <leader>b。

运行当前文件：:GoRun或者使用快捷键 <leader>r。

运行测试：:GoTest或者使用快捷键 <leader>t。

## 其他常用命令
安装依赖：:GoInstallBinaries

更新依赖：:GoUpdateBinaries

清理缓存：:GoClean

查看 Go 版本：:GoVersion

打开 Go Playground：:GoPlay

## 快捷键
vim-go 还提供了一些快捷键来快速执行常用命令：

gd：跳转到定义。

gr：查找引用。

K：查看文档。

<leader>l：运行代码检查。

<leader>f：运行代码格式化。

<leader>v：运行代码验证。

<leader>b：构建项目。

<leader>r：运行当前文件。

<leader>t：运行测试。

通过这些命令和快捷键，你可以高效地进行 Go 语言的开发工作。
