" Compiling and running a Potion file. From
" http://learnvimscriptthehardway.stevelosh.com/chapters/52.html


if !exists("g:potion_command")
    let g:potion_command = '/home/nik/tmp/potion/bin/potion'
endif

function! PotionCompileAndRunFile()
    silent !clear
    execute "!" . g:potion_command . " " . bufname("%")
endfunction

nnoremap <buffer> <localleader>r :call PotionCompileAndRunFile()<cr>

