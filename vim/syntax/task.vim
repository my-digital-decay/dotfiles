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

syn region  tDate       start='<' end='>'

" highlights
"hi def link  tBoxUrgent    Error
"hi def link  tBoxHigh    Todo
hi def link tBoxNormal    Bold
"hi def link tBoxLow       LineNr
"hi def link  tBoxComplete  Comment
"hi def link  tBoxDiscard   Comment

hi def link tTaskUrgent   Error
hi def link tTaskHigh     Statement
"hi def link  tTaskNormal   Normal
hi def link tTaskLow      LineNr
hi def link tTaskComplete Comment
hi def link tTaskDiscard  Comment

hi def link tDate         Identifier

let b:current_syntax = "task"

