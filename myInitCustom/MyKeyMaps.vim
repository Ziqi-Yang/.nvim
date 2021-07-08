" :help key-notation
imap jj <Esc>
imap kk <Esc>

nnoremap <silent> <leader>pp "+p<CR>
vnoremap <silent> <leader>yy "+y
nnoremap <silent> <leader>yl V"+y<Esc>
nnoremap <silent> <leader>yw :%y+<CR>
nnoremap <silent> <leader>yb :%y<CR>
nnoremap <silent> <leader>fm :e $MYVIMRC<CR>
nnoremap <silent> <leader>dd :%d<CR>
nnoremap <silent> <leader><Bslash> :term<CR>i
nnoremap <silent> <leader>rt :call MY_TestOn()<CR>

augroup go 
    autocmd!
    autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
    autocmd FileType go nnoremap <silent> <leader>gg :GoDef<CR>
    autocmd FileType go nnoremap <silent> <leader>gd :GoDoc<CR>
    autocmd FileType go nnoremap <silent> <leader>rm :vs term://go run %<CR>i
    autocmd FileType go nnoremap <silent> <leader>rb :GoBuild<CR>
augroup end


" python,vim
augroup run
    autocmd!
    autocmd FileType python nnoremap <silent> <leader>rr :call PRUN()<CR>
    autocmd FileType vim nnoremap <silent> <leader>rr :call VIMRUN()<CR>
    autocmd FileType go nnoremap <silent> <leader>rr :w<CR>:GoRun<CR>
augroup end
