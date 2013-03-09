" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=2 sw=2
" Vim color file
" Maintainer: Ron Aaron <ron@ronware.org>
" Last Change:  2003 May 02
" Modified by: Keith W. Thompson

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "nnul"

highlight Normal                                          guifg=#d8d8d8 guibg=#0e0e0e

highlight Comment     ctermfg=8                           guifg=#5f5e5e
highlight Constant    ctermfg=14              cterm=none  guifg=#09e6e8               gui=none
highlight Identifier  ctermfg=6                           guifg=#08a0a0
highlight Statement   ctermfg=3               cterm=bold  guifg=#cbd700               gui=bold
highlight PreProc     ctermfg=10                          guifg=#98ec29
highlight Type        ctermfg=2                           guifg=#5fca01
highlight Special     ctermfg=12                          guifg=#6486f3
highlight Error       ctermbg=9                           guibg=#e73729
highlight Todo        ctermfg=4   ctermbg=3               guifg=#445dd1 guibg=#cbd700
highlight Directory   ctermfg=4                           guifg=#445dd1
highlight StatusLine  ctermfg=7   ctermbg=4   cterm=none  guifg=#b4b4b4 guibg=#445dd1 gui=none
highlight Search      ctermbg=15              cterm=bold                guibg=#eaeaea
highlight Title       ctermfg=5               term=bold   guifg=#cc45ca               gui=bold
highlight LineNr      ctermfg=7               cterm=none  guifg=#b4b4b4               gui=none
highlight Operator    ctermfg=4                           guifg=#6287a7

" {kwt:2013.02.13 - Custom color additions used by custom syntax files}
"highlight Function  ctermfg=6                            guifg=#00a0a0
highlight cString     ctermfg=9                           guifg=#e73729
highlight Number      ctermfg=6                           guifg=#08a0a0
"highlight Bold                                            guifg=#ffffff guibg=#000000 gui=bold
"highlight Math        ctermfg=1                           guifg=#dba36f

