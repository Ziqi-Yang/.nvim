func! PRUN()
    exec "w" 
    exec "echo \"\[Start Running...\]\"" 
    exec "!python %"
endfunc

func! VIMRUN()
    exec "w" 
    exec "so %"
    exec "echo \"".expand("%")." has been sourced.\""
endfunc
