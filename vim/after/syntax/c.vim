" Vim syntax file (local modifications)
" Language: C
" Maintainer: Keith W. Thompson <my.digital.decay@gmail.com>
" Last Change:  2013.02.28

syn keyword cHack     contained HACK

syn match cPunctuation  display ";"
syn match cPunctuation  display ":"
syn match cPunctuation  display ","
syn match cPunctuation  display "\."
syn match cPunctuation  display "\.\.\."

syn match cMath       display "+"
syn match cMath       display "+="
syn match cMath       display "-"
syn match cMath       display "-="
syn match cMath       display "*"
syn match cMath       display "*="
syn match cMath       display "/"
syn match cMath       display "/="
syn match cMath       display "%"
syn match cMath       display "%="
syn match cMath       display "++"
syn match cMath       display "--"

"syn match  cOperator   display "?"
"syn match  cOperator   display "="
"syn match  cOperator   display "\.\.\."

syn match cBitwise    display "|"
syn match cBitwise    display "&"
syn match cBitwise    display "\^"
syn match cBitwise    display "\~"

syn match cLogic      display "||"
syn match cLogic      display "&&"
syn match cLogic      display "\!"

syn match cCompare    display "=="
syn match cCompare    display "!="
syn match cCompare    display "<"
syn match cCompare    display ">"
syn match cCompare    display "<="
syn match cCompare    display ">="

syn match cOperator   display "->"

syn match cMath       display ">>"
syn match cMath       display ">>="
syn match cMath       display "<<"
syn match cMath       display "<<="

" Comment section taken from the original c.vim file
if exists("c_comment_strings")
  " A comment can contain cString, cCharacter and cNumber.
  " But a "*/" inside a cString in a cComment DOES end the comment!  So we
  " need to use a special type of cString: cCommentString, which also ends on
  " "*/", and sees a "*" at the start of the line as comment again.
  " Unfortunately this doesn't very well work for // type of comments :-(
  syntax match  cCommentSkip  contained "^\s*\*\($\|\s\+\)"
  syntax region cCommentString  contained start=+L\=\\\@<!"+ skip=+\\\\\|\\"+ end=+"+ end=+\*/+me=s-1 contains=cSpecial,cCommentSkip
  syntax region cComment2String contained start=+L\=\\\@<!"+ skip=+\\\\\|\\"+ end=+"+ end="$" contains=cSpecial
  syntax region  cCommentL  start="//" skip="\\$" end="$" keepend contains=@cCommentGroup,cComment2String,cCharacter,cNumbersCom,cSpaceError,@Spell
  if exists("c_no_comment_fold")
    " Use "extend" here to have preprocessor lines not terminate halfway a
    " comment.
    syntax region cComment  matchgroup=cCommentStart start="/\*" end="\*/" contains=@cCommentGroup,cCommentStartError,cCommentString,cCharacter,cNumbersCom,cSpaceError,@Spell extend
  else
    syntax region cComment  matchgroup=cCommentStart start="/\*" end="\*/" contains=@cCommentGroup,cCommentStartError,cCommentString,cCharacter,cNumbersCom,cSpaceError,@Spell fold extend
  endif
else
  syn region  cCommentL start="//" skip="\\$" end="$" keepend contains=@cCommentGroup,cSpaceError,@Spell
  if exists("c_no_comment_fold")
    syn region  cComment  matchgroup=cCommentStart start="/\*" end="\*/" contains=@cCommentGroup,cCommentStartError,cSpaceError,@Spell extend
  else
    syn region  cComment  matchgroup=cCommentStart start="/\*" end="\*/" contains=@cCommentGroup,cCommentStartError,cSpaceError,@Spell fold extend
  endif
endif
" keep a // comment separately, it terminates a preproc. conditional
syntax match  cCommentError display "\*/"
syntax match  cCommentStartError display "/\*"me=e-1 contained

" Indigo types
syn keyword cIndigoType   IVOID IBOOL ICHAR IUCHAR IINT IUINT ISHORT IUSHORT ILONG IULONG IFLOAT IDOUBLE
syn keyword cIndigoType   IS8 IU8 IS16 IU16 IS32 IU32 IS64 IU64
syn keyword cIndigoType   ICLOCK ITIME IHASH IEID ICRC16 ICRC32 IERR ICOLOR
syn keyword cIndigoConst  IFALSE ITRUE INULL IEOF ON OFF

" Highlight Class and Function name
"syn match  cCustomParen  "(" contains=cParen,cCppParen
"syn match  cCustomFunc   "\w\+\s*(" contains=cCustomParen
"syn match cCustomScope  "::"
"syn match cCustomClass  "\w\+\s::" contains=cCustomScope

" Custom highlighting
hi def link cHack         Todo
hi def link cIndigoType   Type
hi def link cIndigoConst  Constant
hi def link cPunctuation  Operator
"hi def link cMath        Math
"hi def link cLogic       Bold
"hi def link cCompare     Operator
"hi def link cBitwise     Operator

"hi def link cCustomFunc  Function
"hi def link cCustomScope Operator
"hi def link cCustomClass Function


