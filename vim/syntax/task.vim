" Vim syntax file for tasks / todo lists
" Language:     TASK
" Author:       Keith W. Thompson <my.digital.decay@gmail.com>
" Date:         2013.02.28
" File Types:   .task .todo
" Version:      1.00.00
" Tokens:
"   'x' - completed task
"   '-' - discarded / unfinished task
"   '!' - urgent item
"   '^' - high priority item
"   ' ' - normal todo item
"   '_' - low priority item

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" patterns
syn match tBoxUrgent    display "\[\!\]"
syn match tBoxHigh      display "\[\^\]"
syn match tBoxNormal    display "\[ \]"
syn match tBoxLow       display "\[_\]"
syn match tBoxComplete  display "\[x\]"
syn match tBoxDiscard   display "\[-\]"

syn match tTaskUrgent   display "\[\!\].*$"
syn match tTaskHigh     display "\[\^\].*$"
"syn match  tTaskNormal   display "\[ \].*$"
syn match  tTaskLow    display "\[_\].*$"
syn match tTaskComplete display "\[x\].*$"
syn match tTaskDiscard  display "\[-\].*$"

syn match tComment      display "#.*$"

syn region  tDate       start='<' end='>'

" bullet journal
syn match tBjTaskMark     display "^\s*[.] "
"syn match tBjTask         display "^\s*[.] .*$"
"syn match tBjTaskMark     display "^\s*• "
"syn match tBjTask         display "^\s*• .*$"
syn match tBjCompleteMark display "^\s*X "
syn match tBjComplete     display "^\s*X .*$"
syn match tBjCompleteMark display "^\s*x "
syn match tBjComplete     display "^\s*x .*$"
syn match tBjGroup        display "^\s*[:] .*$"
syn match tBjNoteMark     display "^\s*[-] "
"syn match tBjNote         display "^\s*[-] .*$"
syn match tBjEventMark    display "^\s*O "
"syn match tBjEvent        display "^\s*O .*$"
syn match tBjEventMark    display "^\s*o "
"syn match tBjEvent        display "^\s*o .*$"
syn match tBjMoveMark     display "^\s*\^ "
syn match tBjMove         display "^\s*\^ .*$"
syn match tBjMigrateMark  display "^\s*[>] "
"syn match tBjMigrate      display "^\s*[>] .*$"
syn match tBjHighlight    display "^\s*[*] .*$"

" highlights
"hi def link  tBoxUrgent    Error
"hi def link  tBoxHigh      Todo
hi def link tBoxNormal     Bold
"hi def link tBoxLow        LineNr
"hi def link  tBoxComplete  Comment
"hi def link  tBoxDiscard   Comment

hi def link tTaskUrgent    Error
hi def link tTaskHigh      Statement
"hi def link  tTaskNormal   Normal
hi def link tTaskLow       LineNr
hi def link tTaskComplete  Comment
hi def link tTaskDiscard   Comment
hi def link tComment       CommentDoc

hi def link tDate          Identifier

hi def link tBjTaskMark    Bold
hi def link tBjComplete    Comment
hi def link tBjGroup       Bold
hi def link tBjNoteMark    Statement
hi def link tBjEventMark   Color04
hi def link tBjMove        Comment
hi def link tBjMigrateMark Statement
hi def link tBjHighlight   Color02

let b:current_syntax = "task"

