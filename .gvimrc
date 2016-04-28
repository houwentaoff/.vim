"set ai 
"set nu 
"syntax enable 
"syntax on 
"set mouse=a 

"set showcmd 
"set encoding=??????
" error-> let VIM support GBK
"set fileencoding=utf-8
"set hlsearch
"set backup 
"set ruler 
"设置制表代替空格
"set tabstop=4
"set expandtab
"set shiftwidth=4
"set fdm=marker "代码折叠
"set ts=8 sw=8 cin
"set bg=dark 
"set guifont=Courier\ New\ 18
"set guifont=MONACO:h10
"set guifontwide=Consolas:h12
"set guifont=*
"set clipboard=unnamed " Now all operations work with the OS clipboard. No need for +, * (via @panozzaj)

"set background=dark
"colorscheme solarized
"filetype plugin indent on

"set cursorline
"set cursorcolumn

"set completeopt=longest,menu
"let g:SuperTabRetainCompletionType=2
"let g:SuperTabDefaulltCompletionType="<C-P>"
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

"set tags=./tags,./../tags,../../tags,../../../tags,../../../../tags

"map <f6> :TlistToggle<CR>
":w <CR>写成 :w<CR> 结果是不一样的
imap <C-S> <ESC> :w<CR>
nmap <C-S> :w<CR>
"所有的注释都是绿色 不仅仅是语法中c才是.
"windows 中请把此句放入文件 `_vimrc`中
highlight Comment gui=NONE guifg=green

"filetype on
"imap <A-t> <Esc> <A-t>i
"map <f3> :Dox<CR>
"let Tlist_Use_Left_Window=1
"let Tlist_File_Fold_Auto_Close=1
"let Tlist_Sort_Type='name'

"let NERDTreeIgnore += ['\(\.txt\)\@<!$[[file]]'] "error
"let NERDTreeIgnore = ['.*\.txt$','.*\.o$','.*\.gz$','.tags$','.*\.out$']
"map <F11> :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
"全屏
"
"let g:fullscreen = 0
"    "function! ToggleFullscreen()
"        if g:fullscreen == 1
"            let g:fullscreen = 0	
"            let mod = "remove"
"        else
"                let g:fullscreen = 1
"                let mod = "add"
"            endif
"            call system("wmctrl -ir " . v:windowid . " -b " . mod . ",fullscreen")
"    endfunction
"
"    map <silent> <F11> :call ToggleFullscreen()<CR>

