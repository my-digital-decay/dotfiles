" Vim syntax file (local modifications)
" Language: JavaScript
" Maintainer: Keith W. Thompson <my.digital.decay@gmail.com>
" Last Change:  2015.12.17

if !exists("b:current_syntax")
  finish
endif

syn match   javaScriptLineDocComment  "///.*" contains=@Spell,javaScriptCommentTodo
syn match   javaScriptLineDocComment  "//!.*" contains=@Spell,javaScriptCommentTodo

hi def link javaScriptLineDocComment	    CommentDoc
