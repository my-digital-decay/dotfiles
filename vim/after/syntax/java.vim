" Vim syntax file (local modifications)
" Language: Java
" Maintainer: Keith W. Thompson <my.digital.decay@gmail.com>
" Last Change:  2013.06.07

if !exists("b:current_syntax")
  finish
endif

" Comments
syn match   javaLineDocComment	 "///.*" contains=@javaCommentSpecial2,javaTodo,@Spell
syn match   javaLineDocComment	 "//!.*" contains=@javaCommentSpecial2,javaTodo,@Spell

hi def link javaLineDocComment		CommentDoc

