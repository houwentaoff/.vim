# .vim
# vim-srcipt

## 截图
solarized主题
![solarized](https://github.com/houwentaoff/images/blob/master/vim1.png)
## windows 安装步骤
- 下载所有目录,将塞满,就可以用.官网上的试了一下,部分更新没有同步,不能用,于是了这个.  
- 除开使用.vimrc外需将.gvimrc中的部分内容使用. 

## linux　安装步骤
[step 1] `git clone https://github.com/houwentaoff/.vim.git`  
[step 2] `git submodule sync`  
[step 3] `git submodule update --init --recursive`  
[step 4] `sudo apt-get install ctags cscope`  
[step 5] 建立.vimrc软连接指向该项目中的.vimrc　``ln -s `pwd`/.vim/.vimrc ~/.vimrc``

## add new repo (add one)
1. cd ~/.vim 
2. git submodule add repo-url  DST-DIR (eg:git submodule add https://github.com/plasticboy/vim-markdown.git)  

## 快捷键说明
```
ctrl+<或> : 左/右缩进 
F5: 打开文件栏
shirt+r:刷新文件栏
F6:打开函数列表
sp/vsp　分裂窗口
其它详细见.vimrc．
```
## website
[more] (http://www.upaomian.com/%E8%87%AA%E5%8A%A8%E5%8C%96%E7%AE%A1%E7%90%86vim%E9%85%8D%E7%BD%AE/)

## note
**若step 2 或 step 3 出现某个子模块网络错误，不能更新可以将其子项目目录手动删除然后重新执行step 2,3则可正常下载。**
**配置git 提交使用的编辑器: git config --global core.editor vim。**

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
Blog:[http://www.upaomian.com](http://www.upaomian.com)
