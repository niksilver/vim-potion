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

    " Open a new split, or reuse the old one

    let window_num = bufwinnr('__Potion_Bytecode__')
    echom "Target is window " . window_num
    if window_num == -1
        vsplit __Potion_Bytecode__
    else
        let current_window = bufwinnr('%')
        echom "Starting in window " . current_window
        echom "Switching to window " . window_num
        execute 'normal! :' . window_num . "wincmd w\<cr>"
        let current_window = bufwinnr('%')
        echom "Now in window " . current_window
    endif

    " Prepare the split

    let current_window = bufwinnr('%')
    echom "Working in window " . current_window
    normal! ggdG
    setlocal filetype=potionbytecode
    setlocal buftype=nofile

    " Insert the bytecode

    call append(0, split(bytecode, '\v\n'))
    normal! gg
endfunction

nnoremap <buffer> <localleader>r :call PotionCompileAndRunFile()<cr>
nnoremap <buffer> <localleader>b :call PotionShowBytecode()<cr>

