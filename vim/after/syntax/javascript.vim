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

hi def link javaScriptLineDocComment  CommentDoc
hi def link javaScriptDocComment      CommentDoc
