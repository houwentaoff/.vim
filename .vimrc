"must put head of vimrc
runtime bundle/vim-pathogen/autoload/pathogen.vim
"call pathogen#infect()
execute pathogen#infect()
Helptags
let test=0

set ai "自动缩进
set nu "行号
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\[HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

"statusline{
    set statusline=%F%m%r%h%w\ %=[FORMAT=%{&ff}]\ %{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\"}\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
    set laststatus=2
"}

syntax enable  
"set syntax=/usr/share/vim/vim73/syntax/c.vim
syntax on "语法高亮
set backspace=indent,eol,start
set mouse=a " xshell中的粘贴使用shift 操作
"set mouse=c
""设置在任何模式下鼠标都能用，可以复制到选择缓冲区,(xshell中鼠标右键不能使用)
"set mouse=v "可以将选择的内容复制到剪贴板
set showcmd "共享外部剪贴板
set hlsearch
" error-> let VIM support GBK
set fileencodings=utf-8,gbk
"set backup "设置自动储存备份档"“产生sources~的原始档案
set ruler "显示右下角的状态"
set tabstop=4
set expandtab
set shiftwidth=4

"代码折叠 indent : help folding
"
"zc     折叠 :常用
"za     切换折叠和非折叠:常用 嵌套则用zA
"zR     展开文件中所有折叠:常用
"zC     对当前光标范围内所有嵌套的折叠点进行折叠(递归)
"zo     展开当前光标下的折叠:常用
"不常用
"zO     对当前光标下范围内所有嵌套的折叠点展开 
"[z     到当前打开的折叠的开始处。
"]z     到当前打开的折叠的末尾处。
"zj     向下移动。到达下一个折叠的开始处。关闭的折叠也被计入。
"zk     向上移动到前一折叠的结束处。关闭的折叠也被计入。

set fdm=indent "marker "代码折叠
"set foldmethod=manual "代码折叠 foldmethos == fdm
set foldlevelstart=99 "刚打开文件时候不允许被折叠
"set ts=8 sw=8 cin
set bg=dark "显示不同的颜色色调，（背景）"
set guifont=Courier\ New\ 12
"set guifont=MONACO:h10
"set guifontwide=Consolas:h12
"set guifont=*
"set clipboard=unnamed " Now all operations work with the OS clipboard. No need for +, * (via @panozzaj)
"配色方案

"[mM]akefile*             g:filetype_w    |ft-cweb-syntax|
"*.mk             g:filetype_w    |ft-cweb-syntax|
"solarized{
"set background=dark
set t_Co=256
let g:solarized_termcolors=256
"let g:solarized_contrast="low"
"let g:solarized_termtrans=1
colorscheme solarized
"}

"filecheck{
filetype plugin indent on
"}

set cursorline
set cursorcolumn
"omnifunc{
"set completeopt=longest,menu
set completeopt=menu,preview
"}

"SuperTab{
"    let g:SuperTabRetainCompletionType=2
"    let g:SuperTabDefaulltCompletionType="<C-P>"
"}
"	 if has("gui_running")
"		if has("gui_gtk2")
"			:set guifont=Luxi\ Mono\ 12
"		elseif has("x11")
"	" Also for GTK 1
"			set guifont=*-lucidatypewriter-medium-r-normal-*-*-180-*-*-m-*-*
"		elseif has("gui_win32")
"			set guifont=Consolas:h12:cANSI
"		endif
"	endif

"tags{
    "pc company
    set tags=./tags,./../tags,./../../tags,./../../../tags,./../../../../tags,/usr/src/kernel/tags,/usr/src/glibc-2.17/tags,/usr/src/libstdc++-v3.0.97/tags
    "pc home
    "set tags=./tags,./../tags,./../../tags,./../../../tags,./../../../../tags,/usr/src/kernel/tags,/usr/src/glibc-2.17/tags,/usr/src/libstdc++-v3.0.97/tags,/usr/src/linux-headers-4.4.0-47/tags ",/home/work/github/nuc972/NUC970_Linux_Kernel/tags
    function! UpdateCtags()
        let curdir=getcwd()
        while !filereadable("./tags")
            cd ..
            if getcwd() == "/"
                break
            endif
        endwhile
        if filewritable("./tags")
            !ctags -R --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q
            TlistUpdate
        endif
        execute ":cd " . curdir
    endfunction

    nmap <F10> :call UpdateCtags()<CR>
"}

"miniBufExplorer{
"    let g:miniBufExplorerMoreThanOne=0
"}
"被tagbar替代
"taglist{
    map <f6> :TlistToggle<CR>
    let g:Tlist_Use_Left_Window=1
    let g:Tlist_Show_One_File=1
    let g:Tlist_File_Fold_Auto_Close=1
    let g:Tlist_Process_File_Always=1
    let g:Tlist_Exit_OnlyWindow=1 "当是最后一个窗口时，自动退出vim
    let g:Tlist_Sort_Type='name'
    let g:Tlist_Inc_Winwidth=0 
"}

"NERDTree {
    nmap <F5> :NERDTreeToggle<CR>
    nmap <C-F5> :NERDTreeFind<CR>
    
    "let g:NERDChristmasTree=1 "a
    let g:NERDTreeAutoCenter=1 "a
    "let g:NERDTreeChDirMode=2
    "let g:NERDTreeMinimalUI=1 "不显示help panel
    "let g:NERDTreeMouseMode=2 "单击鼠标
    let g:NERDTreeShowBookMarks=1
    "let NERDTreeShowFiles=1
    "let g:NERDTreeShowHidden=1 "展示隐藏文件
    let g:NERDTreeShowLineNumbers=1 "display linenum
    let g:NERDTreeWinPos='left' "left
    let g:NERDTreeWinSIze=30
    "let NERDTreeIgnore += ['\(\.txt\)\@<!$[[file]]'] "error
    let g:NERDTreeIgnore = ['.*\.o$', '.*\.gz$', '^tags$', '\.out$', '\~$'] "'^\.'表示所有以.开头的文件 '.\.o$' 表示以为.o结尾的
"}

"cscope{
    "设置cscope的显示结果是否显示在quickfix中，> copen
    set cscopequickfix=s-,g-,d-,c-,t-,e-,f-
    "cscope 和 ctags 的同步。一步快捷命令
    "1. :cs kill 0
    "2. :cd ${PRJ_ROOT}
    "3. :mktags
    "4. :cs add cscope.out
    "5. :all is OK
"}

"Dox{
    map <f3> :Dox<CR>
"}

"fullscreen{
let g:fullscreen = 0 
function! ToggleFullscreen()
    if g:fullscreen == 1
        let g:fullscreen = 0        
        let mod = "remove"
    else
        let g:fullscreen = 1 
        let mod = "add"                                                     
    endif
    call system("wmctrl -ir " . v:windowid . " -b " . mod . ",fullscreen")
endfunction

map <silent> <F11> :call ToggleFullscreen()<CR>
"}
"
"对齐快捷键盘(左右)
nmap <C-Left> <ESC><<
nmap <C-Right> <ESC>>>
"go lang
"{
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_version_warning = 1
let g:tagbar_left = 1
let g:go_fmt_command = "goimports"

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

au FileType go nmap <F6> :TagbarToggle<CR>
au FileType c,cpp,python,java nmap <F6> :TagbarToggle<CR>
" vim-go custom mappings
"au FileType go nmap s (go-implements)
"au FileType go nmap i (go-info) "和vi中的i冲突
"使用gd 查找函数定义 和doc文档
"gd命令依赖于下面的guru
au FileType go nmap gd (go-doc) 
"au FileType go nmap gv (go-doc-vertical)
"au FileType go nmap r (go-run)
"au FileType go nmap b (go-build)
"au FileType go nmap t (go-test)
"au FileType go nmap c (go-coverage)
"au FileType go nmap ds (go-def-split)
"au FileType go nmap dv (go-def-vertical)
"au FileType go nmap dt (go-def-tab)
"au FileType go nmap e (go-rename)
"let g:tagbar_ctags_bin = '/usr/local/go/bin/gotags' "加了出错
"let g:tagbar_ctagsargs = '-sort -silent ' "加了出错
"必须执行下面的语句用于下载go工具
"go get -u github.com/jstemmer/gotags 
"1. 保证gotags等工具在PATH环境变量中
"sh中参考`
"export GOROOT=/usr/local/go  
"export GOPATH=/home/work/github/go
"export PATH=$GOROOT/bin:$GOPATH/bin:$PATH
"`
"`由于golang网站被墙，所以需要用github上的备份并建立golang中的软连接到golang，最后go
" install生成的文件需要copy到/usr/local/bin中`
"1. mkdir -p `pwd`/golang.org/x
"2. ln  -s `pwd`/github.com/golang/tools `pwd`/golang.org/x/tools
"3. go get -u github.com/nsf/gocode  "use gocode  代码补全的守护进程
"3.1 go install github.com/nsf/gocode
"
"go get golang.org/x/tools/cmd/goimports  "自动插入import 包 golang被墙
"4.go get github.com/golang/tools/cmd/goimports
"4.1 go install golang/tools/cmd/goimports
"
"5. go get -u github.com/rogpeppe/godef
"5.1 go install github.com/rogpeppe/godef
"
"go get   golang.org/x/tools/cmd/guru "gocode 需要用到 gd命令会用到
"6. go get -u  github.com/golang/tools/cmd/guru
"6.1 go install golang/tools/cmd/gurn
"7. cp ~/go/bin/* /usr/local/bin/
"}
if test == 1
endif
let g:go_version_warning = 0
"youcompleteme  
"{
"默认tab  s-tab 和自动补全冲突
set completeopt=longest,menu
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
let g:ycm_complete_in_comments = 1 "在注释输入中也能补全
let g:ycm_complete_in_strings = 1 "在字符串输入中也能补全
let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字也会被收入补全
let g:ycm_min_num_of_chars_for_completion=2 " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_server_python_interpreter='/usr/bin/python'

"跳转到定义处 默认的leader 是'\'
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 跳转到申明处
noremap <leader>gl :YcmCompleter GoToDeclaration<CR>           
" 定义或声明
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR> 
" 查看错误
nmap <leader>gd :YcmDiags<CR>
"}

