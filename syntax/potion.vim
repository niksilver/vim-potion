if exists("b:current_syntax")
    finish
endif

" Syntax groups
" Remember, match longer groups after smaller groups. See
" http://learnvimscriptthehardway.stevelosh.com/chapters/46.html

syntax match potionComment "\v#.*$"

syntax keyword potionKeyword loop times to while
syntax keyword potionKeyword if elsif else
syntax keyword potionKeyword class return

syntax keyword potionFunction print join string

syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"
syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\="
syntax match potionOperator "\v\?"
syntax match potionOperator "\v\/"
syntax match potionOperator "\v\:"
syntax match potionOperator "\v\."
syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v-\="


syntax match potionNumber "\v[-+]?\.[0-9]+"
syntax match potionNumber "\v[-+]?[0-9]+(\.[0-9]*)?"
syntax match potionNumber "\v[-+]?\.[0-9]+e[-+]?\.[0-9]+"
syntax match potionNumber "\v[-+]?\.[0-9]+e[-+]?[0-9]+(\.[0-9]*)?"
syntax match potionNumber "\v[-+]?[0-9]+(\.[0-9]*)?e[-+]?\.[0-9]+"
syntax match potionNumber "\v[-+]?[0-9]+(\.[0-9]*)?e[-+]?[0-9]+(\.[0-9]*)?"

syntax match potionNumber "\v0x[0-9a-fA-F]+"

syntax region potionString start=/\v"/ skip=/\v\\./ end=/\v"/

highlight link potionComment Comment
highlight link potionKeyword Keyword
highlight link potionFunction Function
highlight link potionOperator Operator
highlight link potionNumber Number
highlight link potionString String

let b:current_syntax = "potion"

