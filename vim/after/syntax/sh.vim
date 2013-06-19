"" Vim syntax file (local modifications)
"" Language: sh
"" Maintainer: Keith W. Thompson <my.digital.decay@gmail.com>
"" Last Change:  2013.02.28

if !exists("b:current_syntax")
  finish
endif

"==========
syn match shCommentDoc       "^\s*\zs##.*$" contains=@shCommentGroup
syn match shCommentDoc       "\s\zs##.*$" contains=@shCommentGroup

hi def link shCommentDoc CommentDoc

