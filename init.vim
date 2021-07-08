" set vim background color transparent
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg " transparent background
" =========== Variables ============
"
"

" Notice: coc-go is uninstalled ,because it conflicts with vim-go
" completion(too many optitions)(though it does better than vim-go), also owing to closing vim-go completion is in no use,

let g:indent_guides_guide_size   = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level  = 2  " 从第二层开始可视化显示缩进

let g:onedark_hide_endofbuffer = 1
let g:onedark_terminal_italics = 1
let g:gruvbox_italic=1
let g:gruvbox_transparent_bg=1

let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"


let g:tagbar_width=30

"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_mermaid = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
let g:instant_markdown_autoscroll = 1
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme = 'deus'
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
       \ '0': '0 ',
       \ '1': '1 ',
       \ '2': '2 ',
       \ '3': '3 ',
       \ '4': '4 ',
       \ '5': '5 ',
       \ '6': '6 ',
       \ '7': '7 ',
       \ '8': '8 ',
       \ '9': '9 '
       \}

let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}

" nerdcommenter
"add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" python 自动的会多加一个空格
au FileType python let g:NERDSpaceDelims = 0
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1 
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1



" autocmd vimenter * NERDTree  "自动开启Nerdtree
let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
"打开vim时如果没有文件自动打开NERDTree
" autocmd vimenter * if !argc()|NERDTree|endif
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 设置树的显示图标
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
let g:NERDTreeShowLineNumbers=0 " 是否显示行号
let g:NERDTreeHidden=0     "不显示隐藏文件
""Making it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" vim-go
" note that moditify ~/.local/share/nvim/plugged/vim-go/templates/hello_world.go
" could change the new buffer insertation
let g:go_fmt_command = 'goimports'
let g:go_autodetect_gopath = 1
" let g:go_bin_path = '$GOBIN'
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1

" Open :GoDeclsDir with ctrl-g
nmap <C-g> :GoDeclsDir<cr>
imap <C-g> <esc>:<C-u>GoDeclsDir<cr>



" vim-which-key


let g:mapleader = "\<Space>"
let g:maplocalleader = ","
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :WhichKey ','<CR>
let g:which_key_map =  {}
let g:which_key_map.f = {
            \ 'name': "+file",
            \ 'm': 'open $MYVIMRC',
            \ 'h': ['History','open history'],
            \ 'c': ['Filetypes','change-file-type']
            \ }
let g:which_key_map.c = {
            \ 'name': '+comment'
            \}
let g:which_key_map.w = {
            \ 'name': '+tags',
            \ 'q': 'quit-cur-tab'
            \}
let g:which_key_map.y = {
            \ 'name': '+yank',
            \ 'y': '(visual)clipboard',
            \ 'w': 'whole buffer(clip)',
            \ 'b': 'whole buffer',
            \ 'l': 'line'
            \}
let g:which_key_map.p = {
            \ 'name': '+paste',
            \ 'p': 'paste clipboard'
            \}
let g:which_key_map.s = {
            \ 'name': '+search',
            \ 's': ['BLines', 'lines in current buf(fzf)'],
            \ 'l': ['Lines','Lines in loaded buffers'],
            \ 'm': ['Marks','search-marks'],
            \ 'a': ['Ag','ag(ALT-A/D:select/del all)'],
            \ 'r': ['Rg','rg(ALT-A/D:select/del all)'],
            \ 'f': ['Files', 'fzf-search-files(name)']
            \}
let g:which_key_map.t = {
            \ 'name': '+themes',
            \ 't': ['Colors', 'change theme']
            \} 
let g:which_key_map.g = {
            \ 'name': '+goto(reference...)',
            \ 'g': 'definition',
            \ 'd': 'GoDoc' 
            \} 
let g:which_key_map.d = {
            \ 'name': '+delete',
            \ 'd':"whole content"
            \} 
let g:which_key_map.t = {
            \ 'name': '+translate',
            \ 't': ['Translate', 'bottom line'],
            \ 'w': ['TranslateW','windows'],
            \ 'c': ['TranslateX','clipboard']
            \}
" Notice if i open a go(or other),then open a vimscript(or other except go),the runner
" changed
let g:which_key_map.r = {
            \ 'name': '+run(...)',
            \ 'r': 'run',
            \ 'b': 'build', 
            \ 't': 'MY_test',
            \ 'm': '(go)run in terminal'
            \}
" Note that the mappings should be under the 


" source custom nvim init files 
" (don't use a loop or a function directly to source
" files,or you will get error E127 --- literally lapsed into endless loop)
function SourceVimScripts() 
    let l:command = ""
    let l:files = split(globpath('/home/zarkli/.config/nvim/myInitCustom/','*.vim'),'\n') " use absolute path to avoid problems when opening an non-nvim_init file
    for l:file in l:files
        let l:command .= "source ".l:file." |"
    endfor
    " the end of the l:command should be '|',but that doesn't matter
    return l:command
endfunction
exec SourceVimScripts()




" ==================================================
"  NOTE that coc.nvim configuration is below the Sets
" ==================================================


" =========== Sets =============
se cul " highlight current line and its number
hi clear CursorLine
hi cursorlinenr guifg=bold
set nocompatible
filetype plugin on " examine the filetype
filetype plugin on
filetype plugin indent on 
set fenc=utf-8 " the encoding
set encoding=utf-8 " also
set scrolloff=7 " the number of lines to show below/over your cursor
set ignorecase
set smartcase
set tabstop=4 " tab width = 4
set expandtab " tab ==> space
set autoindent
set smartindent
set shiftwidth=4
set softtabstop=4
set history=70
set ruler
set showcmd
set incsearch " Display matches for a search pattern while you type.
syntax on
set hlsearch " see it in autogroup
" 默认超时是 1000 ms，如果不想那么长的话，你可以在 vimrc 中设置更短一些
set timeoutlen=500 " vim-which-key
set number " line number
" set clipboard+=unnamed " share clipboard
set foldmethod=indent
set foldlevelstart=99 " 每次打开文件时关闭折叠
" autocomplete configuration
" 让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu
" 增强模式中的命令行自动完成操作
set wildmenu
" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class
" f has("autocmd") " auto locate on the last modified position
  " au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" endif





" ==========Plugs Keys Map ==========  
" ==============================

nnoremap <silent> <F4> :TagbarToggle<CR>

" nerd tree
nnoremap <F3> :NERDTreeToggle<CR> " 开启/关闭nerdtree快捷键
" airline -----BEGIN
" 设置切换tab的快捷键 切换到第i个 tab
nmap <leader>w1 <Plug>AirlineSelectTab1
nmap <leader>w2 <Plug>AirlineSelectTab2
nmap <leader>w3 <Plug>AirlineSelectTab3
nmap <leader>w4 <Plug>AirlineSelectTab4
nmap <leader>w5 <Plug>AirlineSelectTab5
nmap <leader>w6 <Plug>AirlineSelectTab6
nmap <leader>w7 <Plug>AirlineSelectTab7
nmap <leader>w8 <Plug>AirlineSelectTab8
nmap <leader>w9 <Plug>AirlineSelectTab9
" 设置切换tab的快捷键 <\> + <-> 切换到前一个 tab
nmap <leader>w- <Plug>AirlineSelectPrevTab
" 设置切换tab的快捷键 <\> + <+> 切换到后一个 tab
nmap <leader>ww <Plug>AirlineSelectNextTab
" 设置切换tab的快捷键 <\> + <q> 退出当前的 tab
nmap <leader>wq :bp<cr>:bd #<cr>
" airline -----END


" Coc.nvim
" I have delete a lot of configuration lines, so if it's missed
" angthing,please goto the its homepage(in github)
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
if has("nvim-0.5.0") || has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
command! -nargs=0 Format :call CocAction('format')
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>






" =========== Plugs ===========
call plug#begin('~/.local/share/nvim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'


Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'liuchengxu/vim-which-key'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'ap/vim-css-color'
Plug 'majutsushi/tagbar'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'farmergreg/vim-lastplace'
Plug 'voldikss/vim-translator'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
call plug#end()

colorscheme gruvbox
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
