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

hi Normal                                         guifg=#d8d8d8 guibg=#0e0e0e

hi Comment    ctermfg=8                           guifg=#5f5e5e
hi Constant   ctermfg=14              cterm=none  guifg=#09e6e8               gui=none
hi Identifier ctermfg=6                           guifg=#08a0a0
hi Statement  ctermfg=3               cterm=bold  guifg=#cbd700               gui=bold
hi PreProc    ctermfg=10                          guifg=#98ec29
hi Type       ctermfg=2                           guifg=#5fca01
"hi Type       ctermfg=4                           guifg=#445dd1
hi Special    ctermfg=12                          guifg=#6486f3
hi Error                  ctermbg=9                             guibg=#e73729
hi Todo       ctermfg=4   ctermbg=3               guifg=#445dd1 guibg=#cbd700
hi Directory  ctermfg=4                           guifg=#445dd1
hi StatusLine ctermfg=7   ctermbg=4   cterm=none  guifg=#b4b4b4 guibg=#445dd1 gui=none
hi Search                 ctermbg=3   cterm=bold                guibg=#cbd700
hi Title      ctermfg=5               term=bold   guifg=#cc45ca               gui=bold
hi LineNr     ctermfg=7               cterm=none  guifg=#b4b4b4               gui=none
hi Operator   ctermfg=4                           guifg=#6287a7
hi SignColumn ctermfg=7   ctermbg=0   cterm=none  guifg=#b4b4b4 guibg=#0e0e0e gui=none

" {kwt:2013.02.13 - Custom color additions used by custom syntax files}
"highlight Function  ctermfg=6                            guifg=#00a0a0
hi cString    ctermfg=9                           guifg=#e73729
hi Number     ctermfg=6                           guifg=#08a0a0
hi CommentDoc ctermfg=5                           guifg=#cc45ca
"highlight Bold                                            guifg=#ffffff guibg=#000000 gui=bold
"highlight Math        ctermfg=1                           guifg=#dba36f

" Direct color / property mappings
hi Color00    ctermfg=0
hi Color01    ctermfg=1
hi Color02    ctermfg=2
hi Color03    ctermfg=3
hi Color04    ctermfg=4
hi Color05    ctermfg=5
hi Color06    ctermfg=6
hi Color07    ctermfg=7
hi Color08    ctermfg=8
hi Color09    ctermfg=9
hi Color10    ctermfg=10
hi Color11    ctermfg=11
hi Color12    ctermfg=12
hi Color13    ctermfg=13
hi Color14    ctermfg=14
hi Color15    ctermfg=15
hi Bold       cterm=bold
hi Italic     cterm=italic
hi Inverse    cterm=inverse

