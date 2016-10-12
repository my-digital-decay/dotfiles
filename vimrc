" .vimrc
" Author: keith w. thompson

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

" trigger sensible listchars
set listchars=eol:$

" pathogen plugin management
execute pathogen#infect()

" set some directory locations
" note: these directories must exist
if isdirectory($HOME)
  let s:local = $HOME . '/.local'
  if has('win32')
    let s:local = $HOME . '/_local'
  end

  let &directory = expand(s:local) . '/share/vim/swap//,' . &directory
  let &undodir = expand(s:local) . '/share/vim/undo//,' . &undodir
  let &backupdir = expand(s:local) . '/share/vim/backup//,' . &backupdir
end

" set some global default settings
set nolist
set noexpandtab
set tabstop=4
set shiftwidth=4
set fileformats+=unix
set history=100
set backup

if has("mouse")
  set mouse=a
endif

" Don't use Ex mode, use Q for formatting
map Q gq

" indent on visual selection
vmap <Tab> >gv
vmap <S-Tab> <gv

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  set hlsearch

  " Press Space to turn off highlighting and clear any message already
  " displayed.
  :nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

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
  autocmd FileType ruby,vim,lua setlocal tabstop=2|setlocal shiftwidth=2|setlocal softtabstop=2|
        \ setlocal expandtab|setlocal list|setlocal number

endif " has("autocmd")

" Disable directory slash in NERDTree
hi def link NERDTreeDirSlash Ignore

