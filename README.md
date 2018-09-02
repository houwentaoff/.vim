# .vim
# vim-srcipt

## windows 安装步骤
0. 在vim安装目录建立`vimfiles`文件夹`F:\Program Files (x86)\Vim\vimfiles`  
1. 使用git工具进行下载安装  
2. `git clone https://github.com/houwentaoff/.vim.git`  
3. `git submodule sync`  
4. `git submodule update --init --recursive`  
5. 将`.vim`文件夹改名为`vimfiles`或替换`vimfiles`  
6. 将下载目录下的_vimrc拷贝到`F:\Program Files (x86)\Vim\ ` 安装目录中  
7. 将下载目录中`package/cscope package/ctags压缩包中的执行程序ctags.exe cscope.exe`拷贝放入vim的执行文件目录.
8. 可选 在`Source Insight`中用快捷键`F1` 用`gvim`打开当前文件:在自定义命令中加入`"F:\Program Files (x86)\Vim\vim80\gvim.exe"  %f +%l`并映射快捷键F1.

## linux　安装步骤
[step 1] `git clone https://github.com/houwentaoff/.vim.git`  
[step 2] `git submodule sync`  
[step 3] `git submodule update --init --recursive`  
[step 4] `sudo apt-get install ctags cscope`  
[step 5] 建立.vimrc软连接指向该项目中的.vimrc　``ln -s `pwd`/.vim/.vimrc ~/.vimrc``      
[step 6] 如果在终端上使用vim（包括xshell连接），需在~/.bashrc末尾加上如下语句用于设置终端为256颜色。
``` shell
if [ "$TERM" == "xterm" ]; then
    export TERM=xterm-256color
fi
```
默认的终端颜色可用`tput colors`进行查看,一般默认为8色.

## linux 更新说明
1. 执行`git pull`更新配置和子工程对应的版本配置.
2. 执行`git submodule update --init --recursive` 更新所有子模块.

## add new repo (add one)
1. cd ~/.vim 
2. git submodule add repo-url  DST-DIR (eg:git submodule add https://github.com/plasticboy/vim-markdown.git)  

## Optional
* install YouCompleteMe
    1. `cd ~/.vim/bundle/YouCompleteMe`
    2. `./install.py --clang-completer`
    3. `cp -a ~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py ~/.vim/`
    4. enjoy youself.

## 快捷键说明
```
ctrl+<或> : 左/右缩进 
F5: 打开文件栏
shirt+r:刷新文件栏
F6:打开函数列表
sp/vsp　分裂窗口
其它详细见.vimrc．

c/c++添加bug修复注释 begin:`\ckc b`  end:`\ckc e`
c/c++添加文件注释`\cfdi` `\cfdh`
c/c++添加函数注释`F3`

c/c++查找库函函数定义`\gg` "you should install YouCompleteMe.
go语言中在`:w`保存后默认会自动添加缺少的包和代码对齐

```
## website
[more] (http://www.lora-app.com/%E8%87%AA%E5%8A%A8%E5%8C%96%E7%AE%A1%E7%90%86vim%E9%85%8D%E7%BD%AE/)

## note
**若step 2 或 step 3 出现某个子模块网络错误，不能更新可以将其子项目目录手动删除然后重新执行step 2,3则可正常下载.**
**配置git 提交使用的编辑器: git config --global core.editor vim.**
**确保使用的是vim而不是vi. 使用vi可能会提示找不到配色solarized**
**全clone c/c++代码补全插件YouCompleteMe会话费大量时间，并且需要做`Optional`中的操作, 根据需要可以不进行更新该模块.**

## 截图
solarized主题
![solarized](https://github.com/houwentaoff/images/blob/master/vim4.png)
![solarized](https://github.com/houwentaoff/images/blob/master/vim1.png)
![solarized](https://github.com/houwentaoff/images/blob/master/vim2.png)
![solarized](https://github.com/houwentaoff/images/blob/master/vim3.png)

## Donation
如果你认为对你有所帮助, You can Buy me a coffee:)
### 微信
![donation](https://github.com/houwentaoff/images/blob/master/wxpay_qrcode.png)
### 支付宝
![donation](https://github.com/houwentaoff/images/blob/master/alipay.jpg)

-----------------
-----------------
Joy * hou
Email: 544088192@qq.com
Blog:[http://www.lora-app.com](http://www.lora-app.com)
