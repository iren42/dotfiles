" Show colors"
syntax on

" Display line number for the current line"
set number

" Display relative number"
set relativenumber

" Display a column at 80 char"
set cc=80
highlight ColorColumn ctermbg=0

" Allow mouse"
set mouse=a

" Indentation style for C language"
set cindent

" Tabulation is only 4 spaces wide"
set tabstop=4

" Indentation corresponds to a single tab, should be equal to tabstop"
set shiftwidth=4

" Display ruler"
set ruler

" Search down into subfolders"
" Provides tab completion for all file-related tasks"
set path+=**

" Display all matching files when we tab complete"
set wildmenu

" In normal mode, show the pressed key in the bottom right hand corner"
set showcmd

" Faster way to switch between buffers"
" \b will list the available buffers and prepare :b for you"
" Then you can just type the buffer number, or part of the filename,"
" and hit Enter."
nnoremap <Leader>b :ls<CR>:b<Space>
