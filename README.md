# .vim
# vim-srcipt

## windows
- 下载所有目录,将塞满,就可以用.官网上的试了一下,部分更新没有同步,不能用,于是了这个.  

## linux
[step 1] git clone https://github.com/houwentaoff/.vim.git  
[step 2] git submodule sync  
[step 3] git submodule update --init --recursive  

## add new repo (add one)
1. cd ~/.vim 
2. git submodule add repo-url  DST-DIR (eg:git submodule add https://github.com/plasticboy/vim-markdown.git)  

## website
more -> http://www.upaomian.com/%E8%87%AA%E5%8A%A8%E5%8C%96%E7%AE%A1%E7%90%86vim%E9%85%8D%E7%BD%AE/

## note
1. 若step 2 或 step 3 出现某个子模块网络错误，不能更新可以将其子项目目录手动删除然后重新执行step 2,3则可正常下载。
