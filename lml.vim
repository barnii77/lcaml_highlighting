" Vim syntax file for Your Programming Language

if exists("b:current_syntax")
  finish
endif

if expand("%:e") != "lml"
  finish
endif

syntax clear

" Keywords
syntax keyword lcamlKeyword let return if else
syntax keyword lcamlStruct struct
syntax keyword lcamlType int float bool string list
syntax keyword lcamlTodo TODO

syntax match lcamlLiteral /()\|\d\+.\d\+\|\d\+/
syntax match lcamlBoolean /true\|false/

" syntax match lcamlIdentifier /\(\(true\|false\)\>\)\@!\([a-zA-Z_][a-zA-Z0-9_]*\)/

syntax match lcamlFunctionDef /|/
syntax match lcamlOperator /+\|-\|\*\|\/\|%\|==\|!=\|<\|<=\|>\|>=\|&&\|||\|!\|~/

" Strings and Comments
syntax region lcamlString start=/"/ end=/"/ contains=@Spell
syntax match lcamlComment /--.*\n/ contains=@Spell

" Linking
highlight link lcamlKeyword Statement
highlight link lcamlType Type
highlight link lcamlStruct Structure
highlight link lcamlLiteral Constant
highlight link lcamlBoolean Boolean
" highlight link lcamlIdentifier Function  " Identifier
highlight link lcamlString String
highlight link lcamlComment Comment
highlight link lcamlFunctionDef Operator
highlight link lcamlOperator Operator
highlight link lcamlTodo Todo

let b:current_syntax = "lml"
