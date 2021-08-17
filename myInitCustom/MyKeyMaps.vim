" :help key-notation
imap jj <Esc>
imap kk <Esc>

imap <C-k> <C-p>
imap <C-j> <C-n> 

" use <Esc> to exit terminal mode
tnoremap <Esc> <C-\><C-n>


nnoremap <silent> <leader>pp "+p<CR>
vnoremap <silent> <leader>yy "+y
nnoremap <silent> <leader>yl V"+y<Esc>
nnoremap <silent> <leader>yw :%y+<CR>
nnoremap <silent> <leader>yb :%y<CR>
nnoremap <silent> <leader>fm :e $MYVIMRC<CR>
nnoremap <silent> <leader>dd :%d<CR>
nnoremap <silent> <leader><Bslash> :term<CR>i
nnoremap <silent> <leader>rt :call MY_TestOn()<CR>


" ex. word -> "word" / [word]
nnoremap <leader>nn uu
nnoremap <leader>n" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>n' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>n{ viw<esc>a}<esc>hbi{<esc>lel
nnoremap <leader>n[ viw<esc>a]<esc>hbi[<esc>lel



augroup go 
    autocmd!
    autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
    autocmd FileType go nnoremap <silent> <leader>gg :GoDef<CR>
    autocmd FileType go nnoremap <silent> <leader>gd :GoDoc<CR>
    autocmd FileType go nnoremap <silent> <leader>rb :GoBuild<CR>
augroup end


" run
augroup run
    autocmd!
    autocmd FileType python nnoremap <silent> <leader>rr :call PRUN()<CR>
    autocmd FileType vim nnoremap <silent> <leader>rr :call VIMRUN()<CR>
    autocmd FileType go nnoremap <silent> <leader>rr :w<CR>:GoRun<CR>
    autocmd FileType html nnoremap <silent> <leader>rr :w<CR>:call HTMLRUN()<CR>
augroup end

" run in terminal
augroup run-in-terminal
    autocmd!
    autocmd FileType go nnoremap <silent> <leader>rm :w<CR>:vs term://go run %<CR>i
    autocmd FileType python nnoremap <silent> <leader>rm :w<CR>:vs term://python %<CR>i
augroup end

augroup other
    autocmd!
    nnoremap <leader><leader> :cd %:p:h<CR>
augroup end


