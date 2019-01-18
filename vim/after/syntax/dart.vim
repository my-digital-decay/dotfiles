" Vim syntax file (local modifications)
" Language: Dart
" Maintainer: Keith W. Thompson <my.digital.decay@gmail.com>
" Last Change:  2019.01.15

if !exists("b:current_syntax")
  finish
endif

" Comments
"syntax keyword dartTodo          contained TODO FIXME XXX HACK
syntax region  drtDocComment     start="/\*\*" end="\*/" contains=drtDocComment,dartTodo,dartDocLink,@Spell
syntax match   drtLineDocComment "///.*" contains=dartTodo,dartDocLink,@Spell

" The default highlighting.
hi default link drtDocComment      CommentDoc
hi default link drtLineDocComment  CommentDoc
