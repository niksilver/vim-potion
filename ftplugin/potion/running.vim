" Compiling and running a Potion file. From
" http://learnvimscriptthehardway.stevelosh.com/chapters/52.html


if !exists("g:potion_command")
    let g:potion_command = '/home/nik/tmp/potion/bin/potion'
endif

nnoremap <buffer> <localleader>r
    \ :call potion#running#PotionCompileAndRunFile()<cr>
nnoremap <buffer> <localleader>b
    \ :call potion#running#PotionShowBytecode()<cr>

