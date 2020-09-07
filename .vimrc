set nu "显示行号
syntax on "自动语法高亮
set shiftwidth=4 "默认缩进4个空格
set softtabstop=4 "使用tab时tab空格数
set tabstop=4 "tab代表4个空格
set showmode "在底部显示当前模式
set showcmd "在底部显示键入指令
set autoindent "下行缩进和上行一致
set cursorline "当前行高亮
set showmatch "括号，自动高亮另一个
set hlsearch "搜索时高亮匹配结果
set incsearch "输入搜索模式时，每输入一个字符，就自动跳转一个匹配结果
vnoremap jj <Esc> 
inoremap jj <Esc> 
nnoremap H ^ 
nnoremap L $
nnoremap LL $A
inoremap ( ()<LEFT>
inoremap < <><LEFT>
inoremap { {}<LEFT><CR><Esc>O
inoremap " ""<LEFT>
inoremap " ""<LEFT>
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.py,*.c  exec ":call SetTitle()"
func SetTitle()
	if &filetype == 'sh'
		 call setline(1,"\##################################################################")
		 call append(line("."), "\# File Name: ".expand("%"))

	endif
    autocmd BufNewFile * normal G  
endfunc
