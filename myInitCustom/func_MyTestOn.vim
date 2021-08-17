" let g:my_TestOn_absoluteTestFilesDir = '/home/zarkli/.config/nvim/testFiles/'
let g:my_TestOn_absoluteTestFilesDir = '/tmp/' 
let g:my_TestOn_goTestFileDir = '/home/zarkli/go/src/'
let g:my_TestOn_suffix = {
            \ 'python': 'py',
            \ 'go': 'go',
            \ 'vim': 'vim'
            \}
" below: note that it's the suffix name
let g:my_TestOn_i = {
            \ 'py': 0, 
            \ 'go': 0,
            \ 'vim': 0
            \}
function! MY_TestOn_IfGo(suffix)
    if a:suffix == "go" " go语言要在src目录下搞事情
        let l:floderName = g:my_TestOn_goTestFileDir.g:my_TestOn_testFileName[:-4]."/"
        if !isdirectory(l:floderName)
            exec "!mkdir" l:floderName 
            exec "!cd" l:floderName "&&" "go mod init" 
        endif
        let g:my_TestOn_absoluteFileName = l:floderName.g:my_TestOn_testFileName
    else
        let g:my_TestOn_absoluteFileName = g:my_TestOn_absoluteTestFilesDir.g:my_TestOn_testFileName
    endif
endfunction
function! MY_TestOn()
    let s:changed = 0
    if !has_key(g:my_TestOn_suffix,&filetype)
        let g:my_TestOn_preSuffix = "vim"
    else
        let g:my_TestOn_preSuffix = g:my_TestOn_suffix[&filetype]
    endif
    let g:my_TestOn_testFileName = 'test_'.g:my_TestOn_i[g:my_TestOn_preSuffix].'.'.g:my_TestOn_preSuffix
    call MY_TestOn_IfGo(g:my_TestOn_preSuffix)
    " echo expand("%")
    if expand("%") == g:my_TestOn_absoluteFileName
        let g:my_TestOn_i[g:my_TestOn_preSuffix] = g:my_TestOn_i[g:my_TestOn_preSuffix] + 1
        let s:changed = 1
    endif
    let g:my_TestOn_testFileName = 'test_'.g:my_TestOn_i[g:my_TestOn_preSuffix].'.'.g:my_TestOn_suffix[&filetype]
    if s:changed == 1
        call MY_TestOn_IfGo(g:my_TestOn_preSuffix)
        " let g:my_TestOn_absoluteFileName = g:my_TestOn_absoluteTestFilesDir.g:my_TestOn_testFileName
    endif
    " echo g:my_TestOn_absoluteFileName
    exec "e" g:my_TestOn_absoluteFileName
endfunction
