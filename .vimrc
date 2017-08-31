" 定义快捷键的前缀，即 <Leader>
let mapleader=";"

" >>>=========文件类型侦测============
" 文件类型侦测

filetype on         " 开启文件类型侦测
filetype plugin on  " 根据侦测到的不同类型加载对应的插件

" <<<================================



" >>>=========vim 自身（非插件）快捷键============
" 

nmap LB 0     " 定义快捷键到行首 / “)” 页尾
nmap LE $     " 定义快捷键到行尾

vnoremap <Leader>y "+y        " 设置快捷键将选中文本块复制至系统剪贴板
nnoremap <Leader>p "+p            " 设置快捷键将系统剪贴板内容粘贴至vim

nnoremap <Leader>q :q<CR>         " 定义快捷键关闭当前分割窗口
nnoremap <Leader>w :w<CR>         " 定义快捷键保存当前窗口内容
nnoremap <Leader>WQ :wa<CR>:q<CR> " 定义快捷键保存所有窗口内容并退出 vim
nnoremap <Leader>Q :qa!<CR>       " 不做任何保存，直接退出 vim

" 设置快捷键遍历子窗口
nnoremap nw <C-W><C-W>        " 依次遍历
nnoremap <Leader>lw <C-W>l    " 跳转至右方的窗口
nnoremap <Leader>hw <C-W>h    " 跳转至方的窗口
nnoremap <Leader>kw <C-W>k    " 跳转至上方的子窗口
nnoremap <Leader>jw <C-W>j    " 跳转至下方的子窗口

nmap <Leader>M %              " 定义快捷键在结对符之间跳转

" <<<=========================================


" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC



" >>>================其他===================
" 其他

set incsearch       " 开启实时搜索功能
set ignorecase      " 搜索时大小写不敏感
set nocompatible    " 关闭兼容模式
set wildmenu        " vim 自身命令行模式智能补全
set mouse=a         " 设置鼠标滚动
"set mouse=v   " 若要使用鼠标复制内容到剪切板

" set scrolloff=7     " 在上下移动光标时，光标的上方或下方至少会保留显示的行数
" :se so=7            " 上面配置的简写

:se so=999          " 总在中间

" <<<=========================================


" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>插件安装>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

" plug 环境设置
filetype off
" set rtp+=~/.vim/plugged
" vim-plug 管理的插件列表必须位于 plug#begin() 和 plug#end() 之间
" 制定插件安装目录 (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')


" >>> 配色方案" 
" Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
" Plug 'vim-scripts/phd'


" 美化状态栏
" Plug 'Lokaltog/vim-powerline'

" 美化状态栏 和 主题
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" C++ 语法高亮支持
" Plug 'octol/vim-cpp-enhanced-highlight'

" JavaScript 语法 (ES5 and ES6)
" Plug 'othree/yajs.vim'

" 支持大多数语言代码高亮
Plug 'sheerun/vim-polyglot'

" 文件搜索
Plug 'wincent/command-t'

" 下面这个插件可取代Command-T 但是现在暂时不支持目录忽略，所以先暂时不用
" 还有就是安装下载不下来啊
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" 相同缩进的代码关联起来
Plug 'nathanaelkane/vim-indent-guides'

" 我习惯把类的接口和实现分在不同文件中，常有在接口文件（MyClass.h）和实现文件（MyClass.cpp）中来回切换的操作。
" 你当然可以先分别打开接口文件和实现文件，再手动切换，但效率不高。
" 我希望，假如在接口文件中，vim 自动帮我找到对应的实现文件，当键入快捷键，在新 buffer 中打开对应实现文件。
Plug 'derekwyatt/vim-fswitch'

" 书签可视化的插件
Plug 'kshenoy/vim-signature'

" 显示git diff 和 stages/undoes 片段
Plug 'airblade/vim-gitgutter'

" 解决中文输入法下面无法使用命令
Plug 'ybian/smartim'

" 它可以让书签行高亮
Plug 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'

" 基于标签的标识符列表插件
Plug 'majutsushi/tagbar'

" 如何自动生成标签并引入
Plug 'vim-scripts/indexer.tar.gz'
" 上面插件，依赖下面两个插件
Plug 'vim-scripts/DfrankUtil'
Plug 'vim-scripts/vimprj'

" 上下文插件，例如搜索到关键字，中间缩略，展示一段上下文
Plug 'dyng/ctrlsf.vim'

" 多光标编辑功能
Plug 'terryma/vim-multiple-cursors'

" 快速开关注释
Plug 'scrooloose/nerdcommenter'

" ASCII art 风格的注释
Plug 'vim-scripts/DrawIt'

" 模板补全插件
Plug 'SirVer/ultisnips'

" 随键而全的、支持模糊搜索的、高速补全的插件
" YCM 由 google 公司搜索项目组的软件工程师 Strahinja Val Markovic 所开发
Plug 'Valloric/YouCompleteMe'

" 根据类声明自动生成类实现的代码框架
Plug 'derekwyatt/vim-protodef'

" 查看文件列表
Plug 'scrooloose/nerdtree'

" NERDTree git 状态
Plug 'Xuyuanp/nerdtree-git-plugin'

" 显示多个 buffer 对应的 window
Plug 'fholgado/minibufexpl.vim'

" 提高HTML和CSS的工作流
Plug 'mattn/emmet-vim'

" 快捷键选中 `<>`、`[]`、`{}` 中间的内容
" 这个与自定义快捷键冲突
Plug 'gcmt/wildfire.vim'

" 让你有机会撤销最近一步或多步操作
Plug 'sjl/gundo.vim'

" 快速移动，两次 `<leader>` 作为前缀键
Plug 'Lokaltog/vim-easymotion'

" 编辑 markdown 文档，自动开启 firefox 为你显示 markdown 最终效果
Plug 'suan/vim-instant-markdown'

" 中/英输入平滑切换
" Plug 'lilydjwg/fcitx.vim'

" 语法高亮多种知名JS库
Plug 'othree/javascript-libraries-syntax.vim'

" React jsx 语法高亮
" Plug 'mxw/vim-jsx'

" 提供快速编写xml/html的能力，如标签自动闭合等
Plug 'othree/xml.vim'

" 实时显示颜色的功能，如#FFFFFF
Plug 'cakebaker/scss-syntax.vim'

" CSS3 高亮，包括stylus,Less,Sass
Plug 'hail2u/vim-css3-syntax'

" 异步
Plug 'skywind3000/asyncrun.vim'

call plug#end()            " 插件列表结束
filetype plugin indent on  " 根据侦测到的不同类型加载对应的插件
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

" >>>>>>>>>>
" 配色方案
" 
set background=dark
" 素雅 solarized
" Plug 'altercation/vim-colors-solarized'
" colorscheme solarized

" 多彩 molokai
" Plug 'tomasr/molokai' 
colorscheme molokai

" 复古 phd
" Plug 'tomasr/molokai' 
" colorscheme phd
" <<<<<<<<<<

" Asyncrun 运行时自动打开Quickfix窗口
augroup vimrc
    autocmd User AsyncRunStart call asyncrun#quickfix_toggle(8, 1)
  augroup END

" >>>>>>>>>>
" 营造专注气氛

set gcr=a:block-blinkon0   " 禁止光标闪烁

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 将外部命令 wmctrl 控制窗口最大化的命令行参数封装成一个 vim 的函数
fun! ToggleFullscreen()
    call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf
" 全屏开/关快捷键
map <silent> <F11> :call ToggleFullscreen()<CR>
"" 启动 vim 时自动全屏
autocmd VimEnter * call ToggleFullscreen()

" <<<<<<<<<<



" >>>>>>>>>>
" 辅助信息
 
set laststatus=2   " 总是显示状态栏
set ruler          " 显示光标当前位置
set number         " 开启行号显示
                   " 显示绝对行号      set number
                   " 取消显示绝对行号   set nonumber
                   " 显示相对行号       set relativenumber
                   " 取消显示相对行号   set norelativenumber

set cursorline    " 高亮显示当前 - 行
set cursorcolumn  " 高亮显示当前 - 列
set hlsearch      " 高亮显示搜索结果
set nocompatible  " 不要使用vi的键盘模式，而是vim自己的 
" set encoding=utf-8

" 在处理未保存或只读文件的时候，弹出确认 
set confirm 

" <<<<<<<<<<



" >>>>>>>>>>
" 其他美化

" 设置 gvim 显示字体
" set guifont=YaHei\ Consolas\ Hybrid\ 10.5
" set guifont=Liberation\ Mono\ for\ Powerline\ 10 
set guifont=Source\ Code\ Pro\ for\ Powerline:h16 


set nowrap " 禁止折行


" Plug 'Lokaltog/vim-powerline'
" 设置状态栏主题风格
" let g:Powerline_colorscheme='solarized256'
" let g:Powerline_symbols='fancy'


" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" 设置状态栏主题风格
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


let g:airline_powerline_fonts=1


" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'

let g:airline_theme='jellybeans'
" let g:airline_theme='PaperColor'
" let g:airline_theme='powerlineish'

" <<<<<<<<<<



" >>>>>>>>>>
" 语法分析

syntax enable " 开启语法高亮功能
syntax on     " 允许用指定语法高亮配色方案替换默认方案

" <<<<<<<<<<



" >>>>>>>>>>
" 缩进

filetype indent on  " 自适应不同语言的智能缩进
set expandtab       " 将制表符扩展为空格
set tabstop=2       " 设置编辑时制表符占用空格数
set shiftwidth=2    " 设置格式化时制表符占用空格数
set softtabstop=2   " 让 vim 把连续数量的空格视为一个制表符


" Plug 'nathanaelkane/vim-indent-guides'
" 缩进可视化插件 Indent Guides
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
nmap <silent> <Leader>i <Plug>IndentGuidesToggle


" 自定义关联可视化 颜色
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" <<<<<<<<<<



" >>>>>>>>>>
" 代码折叠

set foldmethod=syntax   " 基于缩进或语法进行代码折叠 
                        " 手动建立折叠（manual）、
                        " 基于缩进进行折叠（indent）、
                        " 基于语法进行折叠（syntax）、
                        " 未更改文本构成折叠（diff）等等，
set nofoldenable       " 启动 vim 时关闭折叠代码

" <<<<<<<<<<


" >>>>>>>>>>
" 接口与实现快速切换

" Plug 'derekwyatt/vim-fswitch'
" *.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :FSHere<cr>

" <<<<<<<<<<



" >>>>>>>>>>
" 代码收藏

" Plug 'kshenoy/vim-signature'
" 书签可视化的插件
" 自定义 vim-signature 快捷键
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }

" <<<<<<<<<<



" >>>>>>>>>>
" 标签列表

" Plug 'majutsushi/tagbar'
" 基于标签的标识符列表插件
" 需要安装ctags `brew install ctags`
" 安装ctags 之后签列表子窗口才能出现

let tagbar_left=0                      " 设置 tagbar 子窗口的位置出现在主编辑区的左边
let tagbar_width=32                    " 设置标签子窗口的宽度
let g:tagbar_compact=1                 " tagbar 子窗口中不显示冗余帮助信息
nnoremap <Leader>ilt :TagbarToggle<CR> 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag

" 自动更新标签
autocmd BufWritePost *.c,*.h,*.cpp,*.py,*.html,*.css,*.md,*.php call UpdateCtags()

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

" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_css = {
\ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
\ }
" Add support for markdown files in tagbar.
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'mkd',
    \ 'ctagsbin' : '~/.vim/plugged/markdown2ctags/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }

" <<<<<<<<<<



" >>>>>>>>>>
" 代码导航
 
" 基于标签的代码导航

" 自动生成标签并引入
" Plug 'vim-scripts/indexer.tar.gz'
" 上面插件，依赖下面两个插件
" Plug 'vim-scripts/DfrankUtil'
" Plug 'vim-scripts/vimprj'
" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"


" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>

" 基于语义的代码导航

nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>

" <<<<<<<<<<



" >>>>>>>>>>
" 查找

" 上下文插件，例如搜素到关键字，中间缩略，展示一段上下文
" Plug 'dyng/ctrlsf.vim'
" 使用 ctrlsf.vim 插件在工程内全局查找光标所在关键字，设置快捷键。
" 快捷键速记法：search in project
let g:ctrlsf_ackprg = 'rg' 
nnoremap <Leader>sp :CtrlSF<CR>
" 选中搜索 - 文本中选中关键字
vmap     <Leader>sp <Plug>CtrlSFVwordPath
" 选中搜索 - 结果列表
vmap     <Leader>sl <Plug>CtrlSFQuickfixVwordPath
vmap     <Leader>sL <Plug>CtrlSFQuickfixVwordExec

" <<<<<<<<<<


" >>>>>>>>>>
" 内容替换

" 快捷替换插件设置快捷键
" Plug 'terryma/vim-multiple-cursors'

let g:multi_cursor_next_key='<S-n>'  " 选中下一个字符
let g:multi_cursor_skip_key='<S-k>'  " 选中跳过当前字符

" 精准替换
" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>

" <<<<<<<<<<



" >>>>>>>>>>
" 模板补全
" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsSnippetDirectories=["mysnippets"]
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"
" <<<<<<<<<<



" >>>>>>>>>>
" 快速开关注释
" Plug 'scrooloose/nerdcommenter'

" 在注释符默认添加空格
let g:NERDSpaceDelims = 1
" 使用紧凑语法美化多行注释
let g:NERDCompactSexyComs = 1
" 将行注释符左对齐而不是下面的代码缩进
let g:NERDDefaultAlign = 'left'
" 设置语言默认使用备用定界符
let g:NERDAltDelims_java = 1
" 添加自定义格式或覆盖默认值。
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" 允许注释和转换空行（注释区域时有用）
let g:NERDCommentEmptyLines = 1
" 启用时修整尾随空格注释
let g:NERDTrimTrailingWhitespace = 1

" <<<<<<<<<<



" >>>>>>>>>>
" YCM 补全

" 随键而全的、支持模糊搜索的、高速补全的插件
" YCM 由 google 公司搜索项目组的软件工程师 Strahinja Val Markovic 所开发
" Plug 'Valloric/YouCompleteMe'
" YCM 补全菜单配色
" 菜单
" highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
" highlight PmenuSel term=bold ctermbg=darkred guibg=#13354A


" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1

" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0

" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=0
"" 引入 C++ 标准库 tags
"set tags+=/data/misc/software/app/vim/stdcpp.tags
"set tags+=/data/misc/software/app/vim/sys.tags

" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>

" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview

" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1

" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0

" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1

" <<<<<<<<<<
 

" >>>>>>>>>>
" 由接口快速生成实现框架

" 根据类声明自动生成类实现的代码框架
" Plug 'derekwyatt/vim-protodef'
" 成员函数的实现顺序与声明顺序一致
let g:disable_protodef_sorting=1

" <<<<<<<<<<


" >>>>>>>>>>
" 语法高亮多种知名JS库
" Plug 'othree/javascript-libraries-syntax.vim'

let g:used_javascript_libs = 'jquery,react,vue'

" autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
" autocmd BufReadPre *.js let b:javascript_lib_use_react = 1
" autocmd BufReadPre *.js let b:javascript_lib_use_vue = 1
" autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 0
" autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
" autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 0

" <<<<<<<<<<



" >>>>>>>>>>
" 库信息参考

" 系统中必须先安装对应 man。安装 linux 系统函数 man
" vim 内置的 man.vim 插件可以查看已安装的 man
" 配置启动时自动加载该插件
" 启用:Man命令查看各类man信息
source $VIMRUNTIME/ftplugin/man.vim

" 定义:Man命令查看各类man信息的快捷键
nmap <Leader>man :Man 3 <cword><CR>

" <<<<<<<<<<


" >>>>>>>>>>
" 工程文件浏览

" 查看工程文件列表
" Plug 'scrooloose/nerdtree'
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>

" NERDTree: File highlighting 文件列表，文件名字各种颜色高亮
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade',   'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('md',     'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml',    'magenta', 'none', 'yellow', '#E70350')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf',   'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json',   'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html',   'green', 'none', 'green', '#04E703')
call NERDTreeHighlightFile('styl',   'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css',    'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js',     'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php',    'Magenta', 'none', '#ff00ff', '#151515')

" 设置 NERDTree 子窗口宽度
let NERDTreeWinSize=32
" 设置 NERDTree 子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

" NERDTree git 状态
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" <<<<<<<<<<



" >>>>>>>>>>
" 多文档编辑
 
" 显示多个 buffer 对应的 window
" Plug 'fholgado/minibufexpl.vim'
" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>

" buffer 切换快捷键
" map <C-Tab> :MBEbn<cr>
" map <C-S-Tab> :MBEbp<cr>
nnoremap <Leader>bn :MBEbn<cr>  " 正向遍历 buffer
nnoremap <Leader>bp :MBEbp<cr>  " 逆向遍历（光标必须在 buffer 列表子窗口外）
nnoremap <Leader>bd :MBEbd<cr>  " 关闭当前buffer（光标必须在 buffer 列表子窗口外）
nnoremap <Leader>bb :b#<cr>     " 你之前所在的前一个 buffer）

" <<<<<<<<<<


" >>>>>>>>>>
" 环境恢复

" 设置环境保存项
set sessionoptions="blank,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"

" 保存 undo 历史。必须先行创建 .undo_history/
set undodir=~/.undo_history/
set undofile

" 保存快捷键
"map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
map <leader>ss :mksession! my.vim<cr>

" 恢复快捷键
"map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>
map <leader>rs :source my.vim<cr>

" <<<<<<<<<<
 

" 设置快捷键实现一键编译及运行
" nmap <Leader>m :wa<CR> :cd build/<CR> :!rm -rf main<CR> :!cmake CMakeLists.txt<CR>:make<CR><CR> :cw<CR> :cd ..<CR>
" nmap <Leader>g :wa<CR>:cd build/<CR>:!rm -rf main<CR>:!cmake CMakeLists.txt<CR>:make<CR><CR>:cw<CR>:cd ..<CR>:!build/main<CR>


" >>>>>>>>>>
" 快速选中结对符内的文本
 
" 快捷键
map <SPACE> <Plug>(wildfire-fuel)
vmap <S-SPACE> <Plug>(wildfire-water)

" 适用于哪些结对符
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]

" <<<<<<<<<<


" >>>>>>>>>>
" 让你有机会撤销最近一步或多步操作
" Plug 'sjl/gundo.vim'
" 调用 gundo 树
nnoremap <Leader>ud :GundoToggle<CR>

" <<<<<<<<<<

" <<<<<<<<<<<<
" 启用 .md 实时预览
let g:instant_markdown_allow_unsafe_content = 1

" >>>>>>>>>>>>
" 异步git相关
nnoremap <Leader>gad :AsyncRun git add .<cr>
nnoremap <Leader>gcm :!git commit<cr>
nnoremap <Leader>gph :!git push<cr>
nnoremap <Leader>gul :!git pull<cr>

" 开关quickfix窗口
nnoremap <Leader>qft :call asyncrun#quickfix_toggle(8)<cr>

" 编辑vim设置
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
