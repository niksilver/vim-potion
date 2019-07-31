" Compiling and running a Potion file. From
" http://learnvimscriptthehardway.stevelosh.com/chapters/52.html


if !exists("g:potion_command")
    let g:potion_command = '/home/nik/tmp/potion/bin/potion'
endif

function! PotionCompileAndRunFile()
    silent !clear
    execute "!" . g:potion_command . " " . bufname("%")
endfunction

function! PotionShowBytecode()
    " Get the bytecode
    let bytecode = system(g:potion_command . ' -c -V ' . bufname('%') . ' 2>&1')

    " Open a new split and set it up
    vsplit __Potion_Bytecode__
    normal! ggdG
    setlocal filetype=potionbytecode
    setlocal buftype=nofile

    " Insert the bytecode
    call append(0, split(bytecode, '\v\n'))
    normal! gg
endfunction

nnoremap <buffer> <localleader>r :call PotionCompileAndRunFile()<cr>
nnoremap <buffer> <localleader>b :call PotionShowBytecode()<cr>

