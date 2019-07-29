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

highlight link potionComment Comment
highlight link potionKeyword Keyword
highlight link potionFunction Function
highlight link potionOperator Operator

let b:current_syntax = "potion"

