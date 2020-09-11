set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'https://github.com/ycm-core/YouCompleteMe.git'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'

Plugin 'vim-scripts/taglist.vim'
Plugin 'dense-analysis/ale'

Plugin 'majutsushi/tagbar'

Plugin 'vim-airline/vim-airline'

Plugin 'scrooloose/nerdcommenter'


call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line""""""""""""")"

"vim全局变量的配置"
let mapleader="\<Space>"
" ycm配置开始
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py' "路径
let g:ycm_confirm_extra_conf=0 "打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_collect_identifiers_from_tag_files = 1 "使用ctags生成的tags文件


" ycm配置结束

"solarized 主题配置开始
let g:solarized_termtrans = 1 " 使用 termnal 背景
 
let g:solarized_visibility = "high" " 使用 :set list 显示特殊字符时的高亮级别
 
 
" GUI 模式浅色背景，终端模式深色背景
  
if has('gui_running')
   
set background=light
    
else
     
set background=dark
      
endif
       
        
" 主题设置为 solarized
         
colorscheme solarized



"配置结束

"NERDTree配置开始



"配置结DTreeHighlightCursorline = 1 " 高亮当前行
let NERDTreeShowLineNumbers = 1 " 显示行号
" 
 " 忽略列表中的文件
 let NERDTreeIgnore = [ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.egg$','^\.git$', '^\.repo$', '^\.svn$', '^\.hg$' ]
" 启动 vim 时打开 NERDTree
"  
"autocmd vimenter * NERDTree
"当打开 VIM，没有指定文件时和打开一个目录时，打开 NERDTree
"   
"autocmd StdinReadPre * let s:std_in = 1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree |endif
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) &&!exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd'.argv()[0] | endif
"关闭 NERDTree，当没有文件打开的时候
"     
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end
"<leader>nt 打开 nerdtree 窗口，在左侧栏显示
map <leader>nt :NERDTreeToggle<CR>
"<leader>tc 关闭当前的 tab
map <leader>tc :tabc<CR>
"<leader>to 关闭所有其他的 tab
map <leader>to :tabo<CR>
"<leader>ts 查看所有打开的 tab
map <leader>ts :tabs<CR>
"<leader>tp 前一个 tab
map <leader>tp :tabp<CR>
"<leader>tn 后一个 tab
map <leader>tn :tabn<CR>
"配置结束


"taglist配置开始
let Tlist_Show_One_File = 1 " 只显示当前文件的tags
 
let Tlist_GainFocus_On_ToggleOpen = 1 " 打开 Tlist 窗口时，光标跳到 Tlist 窗口
 
let Tlist_Exit_OnlyWindow = 1 " 如果 Tlist 窗口是最后一个窗口则退出 Vim
 
let Tlist_Use_Left_Window = 1 " 在左侧窗口中显示
 
let Tlist_File_Fold_Auto_Close = 1 " 自动折叠
 
let Tlist_Auto_Update = 1 " 自动更新
 
 
" <leader>tl 打开 Tlist 窗口，在左侧栏显示
"  
map <leader>tl :TlistToggle<CR>

"配置结束


"ale配置开始
let g:ale_lint_on_text_changed = 'normal' " 代码更改后启动检查
let g:ale_lint_on_insert_leave = 1 " 退出插入模式即检查
 
let g:ale_sign_column_always = 1 " 总是显示动态检查结果
let g:ale_sign_error = '>>' " error 告警符号
 
let g:ale_sign_warning = '--' " warning 告警符号
let g:ale_echo_msg_error_str = 'E' " 错误显示字符
 
let g:ale_echo_msg_warning_str = 'W' " 警告显示字符
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]' " 告警显示格式
 
 
" C 语言配置检查参数
let g:ale_c_gcc_options = '-Wall -Werror -O2 -std=c11'
let g:ale_c_clang_options = '-Wall -Werror -O2 -std=c11'
let g:ale_c_cppcheck_options = ''
" " C++ 配置检查参数
"  
let g:ale_cpp_gcc_options = '-Wall -Werror -O2 -std=c++14'
"   
let g:ale_cpp_clang_options = '-Wall -Werror -O2 -std=c++14'
"    
let g:ale_cpp_cppcheck_options = ''
"     
"      
"      "使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
"      let g:ale_linters = {
"      \ 'c++': ['clang', 'gcc'],
"      \ 'c': ['clang', 'gcc'],
"      \ 'python': ['pylint'],
"      \}
"      " <F9> 触发/关闭代码动态检查
"       
map <F9> :ALEToggle<CR>
"        
"        "普通模式下，ak 前往上一个错误或警告，aj 前往下一个错误或警告
nmap ak <Plug>(ale_previous_wrap)
nmap aj <Plug>(ale_next_wrap)
" ad 查看错误或警告的详细信息
nmap ad :ALEDetail<CR>


"配置结束



"配置开始



"配置结束
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
inoremap {<Space> {}<LEFT><CR><Esc>O
inoremap { {}<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.py,*.c  exec ":call SetTitle()"
func SetTitle()
	if &filetype == 'sh'
		 call setline(1,"\##################################################################")
		 call append(line("."), "\# File Name: ".expand("%"))

	endif
    autocmd BufNewFile * normal G  
endfunc
