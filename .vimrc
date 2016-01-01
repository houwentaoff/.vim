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
set mouse=a "设置在任何模式下鼠标都能用，可以复制到选择缓冲区
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
set fdm=marker "代码折叠
set foldmethod=manual "代码折叠
"set ts=8 sw=8 cin
"set bg=dark "显示不同的颜色色调，（背景）"
set guifont=Courier\ New\ 12
"set guifont=MONACO:h10
"set guifontwide=Consolas:h12
"set guifont=*
"set clipboard=unnamed " Now all operations work with the OS clipboard. No need for +, * (via @panozzaj)
"配色方案

"[mM]akefile*             g:filetype_w    |ft-cweb-syntax|
"*.mk             g:filetype_w    |ft-cweb-syntax|
"solarized{
set background=dark
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
"g:solarized_termcolors=256
"set t_Co=256
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
    set tags=./tags,./../tags,../../tags,../../../tags,../../../../tags,/usr/src/kernel/tags,/usr/src/glibc-2.17/tags,/usr/src/libstdc++-v3.0.97/tags
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
if test == 1
endif


