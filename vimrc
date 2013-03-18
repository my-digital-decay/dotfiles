" An example for a vimrc file.
"
" Maintainer: Bram Moolenaar <Bram@vim.org>
" Last change:  2002 Sep 19
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"       for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"     for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" custom colorscheme
colorscheme nnul

" gui only settings (these are recomended to be set here instead of .gvimrc)
"if has("gui_running")
  " powerline
  let g:Powerline_symbols = 'fancy'
"endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" pathogen plugin management
execute pathogen#infect()

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" set some global default settings
"set listchars=tab:>-,trail:~
set nolist
set noexpandtab
set tabstop=4
set shiftwidth=4
set fileformats+=unix
set history=100

" Don't use Ex mode, use Q for formatting
map Q gq

" indent on visual selection
vmap <Tab> >gv
vmap <S-Tab> <gv

if has("vms")
  set nobackup    " do not keep a backup file, use versions instead
else
  set backup    " keep a backup file
endif

if has("mouse")
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 80 characters.
  autocmd FileType text setlocal textwidth=80

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END

  " set custom settings based on filetype
  autocmd FileType c,cpp,glsl setlocal softtabstop=4|setlocal expandtab|setlocal list|setlocal number
  autocmd FileType ruby,vim setlocal tabstop=2|setlocal shiftwidth=2|setlocal softtabstop=2|
        \ setlocal expandtab|setlocal list|setlocal number

endif " has("autocmd")

