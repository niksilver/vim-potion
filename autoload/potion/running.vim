" Autoload functions for the main running.vim

function! potion#running#PotionCompileAndRunFile()
    silent !clear
    execute "!" . g:potion_command . " " . bufname("%")
endfunction

function! potion#running#PotionShowBytecode()
    " Get the bytecode
 
    let bytecode = system(g:potion_command . ' -c -V ' . bufname('%') . ' 2>&1')

    " Open a new split, or reuse the old one

    let window_num = bufwinnr('__Potion_Bytecode__')
    if window_num == -1
        vsplit __Potion_Bytecode__
    else
        execute 'normal! :' . window_num . "wincmd w\<cr>"
    endif

    " Prepare the split

    normal! ggdG
    setlocal filetype=potionbytecode
    setlocal buftype=nofile

    " Insert the bytecode

    call append(0, split(bytecode, '\v\n'))
    normal! gg
endfunction


