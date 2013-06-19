"" Vim syntax file (local modifications)
"" Language: Vim
"" Maintainer: Keith W. Thompson <my.digital.decay@gmail.com>
"" Last Change:  2013.02.28

if !exists("b:current_syntax")
  finish
endif

"" =========
syn match vimLineCommentDoc +^[ \t:]*"".*$+ contains=@vimCommentGroup,vimCommentString,vimCommentTitle
syn match vimLineCommentDoc +^[ \t:]*"!.*$+ contains=@vimCommentGroup,vimCommentString,vimCommentTitle

hi def link vimLineCommentDoc CommentDoc

