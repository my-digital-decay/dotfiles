" .gvimrc

" Turn on line numbers
set number

" Change colorscheme
"colorscheme pablo
colorscheme nnul

" Turns on the tab bar always
" set showtabline=2

" Number of horizontal lines on the screen
set lines=80

" GUI Option to remove the Toolbar (T)
" set guioptions-=T

" Sets the font and size
" set guifont=Bitstream\ Vera\ Sans\ Mono:h12

" Sets the percent transparency
set transparency=0

" set tab behavior based on filetype for code editing
set listchars=tab:>-,trail:~
autocmd FileType make setlocal tabstop=4|set noexpandtab
autocmd FileType c set tabstop=4|set shiftwidth=4|set softtabstop=4|set expandtab|set list
autocmd FileType cpp set tabstop=4|set shiftwidth=4|set softtabstop=4|set expandtab|set list
autocmd FileType glsl set tabstop=4|set shiftwidth=4|set softtabstop=4|set expandtab|set list
autocmd FileType ruby set tabstop=2|set shiftwidth=2|set softtabstop=2|set expandtab|set list

" indent on visual selection
vmap <Tab> >gv
vmap <S-Tab> <gv

