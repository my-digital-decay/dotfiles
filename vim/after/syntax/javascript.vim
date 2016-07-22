" Vim syntax file (local modifications)
" Language: JavaScript
" Maintainer: Keith W. Thompson <my.digital.decay@gmail.com>
" Last Change:  2016.06.15

if !exists("b:current_syntax")
  finish
endif

syn keyword javaScriptCommentTodo     TODO FIXME XXX TBD HACK contained
syn region  javaScriptComment         start="/\*"  end="\*/" contains=@Spell,javaScriptCommentTodo

syn match   javaScriptLineDocComment  "\/\/\/.*" contains=@Spell,javaScriptCommentTodo
syn match   javaScriptLineDocComment  "\/\/!.*" contains=@Spell,javaScriptCommentTodo
syn region  javaScriptDocComment      start="/\*\*"  end="\*/" contains=@Spell,javaScriptCommentTodo
syn region  javaScriptDocComment      start="/\*!"  end="\*/" contains=@Spell,javaScriptCommentTodo

syntax region  javascriptTemplate          start=/`/  skip=/\\\\\|\\`\|\n/  end=/`\|$/ contains=javascriptTemplateSubstitution nextgroup=@javascriptComments,@javascriptSymbols skipwhite skipempty
syntax region  javascriptTemplateSubstitution matchgroup=javascriptTemplateSB contained start=/\${/ end=/}/ contains=@javascriptExpression

syntax match   javaScriptFloat            /\<-\=\%(\d\+\.\d\+\|\d\+\.\|\.\d\+\)\%([eE][+-]\=\d\+\)\=\>/
syntax match   javascriptDollar           "\$"


hi def link javaScriptLineDocComment  CommentDoc
hi def link javaScriptDocComment      CommentDoc

hi def link javascriptTemplate               String
hi def link javascriptTemplateSubstitution   Special
hi def link javascriptTemplateSB             javascriptTemplateSubstitution

hi def link javaScriptFloat                  Number
hi def link javascriptDollar                 Special
