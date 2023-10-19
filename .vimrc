" Show colors"
syntax on

" NerdTree-like netrw :Vex"
let g:netrw_banner=0 "hide big banner"
let g:netrw_liststyle=3 "tree view"
let g:netrw_browse_split=4 "open the file in the previous window"
let g:netrw_altv=1 "open the file the right"
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide=&wildignore
let g:netrw_list_hide='\(^\|\s\s\)\zs\.\S\+'

" Display line number for the current line"
set number
" Display relative number"
set relativenumber
" Display ruler"
set ruler
" Display a column at 80 char"
set cc=80
highlight ColorColumn ctermbg=0

" Highlight all search matches"
set hlsearch

" Hide the statusline"
set laststatus=0

" More visibility"
set cursorline

" Cursorline only on active pane"
augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cursorline
    autocmd WinLeave * set nocursorline
augroup END

" Quick search with :grep <keyword>, then :copen, and :ccl to close quickfix"
set gp=git\ grep\ -n

" Allow mouse"
set mouse-=a

" Indentation style"
set smartindent
" Tabulation is only 4 spaces wide"
set tabstop=4
" Indentation corresponds to a single tab, should be equal to tabstop"
set shiftwidth=4

" To open buffers without saving the current file"
set hidden
" No swap files allowed"
set noswapfile

" Search down into subfolders"
" Provides tab completion for all file-related tasks"
set path+=**

" Display all matching files when we tab complete"
set wildmenu

" In normal mode, show the pressed key in the bottom right hand corner"
set showcmd

" Faster way to switch between buffers"
" \b will list the available buffers and prepare :b for you"
nnoremap <Leader>b :ls<CR>:b<Space>
nnoremap <Leader>` :buffer #<cr>
nnoremap <Tab> :bn<Return>
nnoremap <S-Tab> :bp<Return>

" ESC key in insert mode remapped to kj"
inoremap kj <esc>

" Automatically do 'zz' for CTRL + d/u"
" Place the cursor to the center of the screen"
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Automatically insert a closing bracket"
inoremap ( ()<Left>

" Split window"
nnoremap so :split<Return><C-w>w
nnoremap se :vsplit<Return><C-w>w
" Move between split windows"
nnoremap sh <C-w>h
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sj <C-w>j
" Resize window"
nnoremap <C-w><Left> <C-w><
nnoremap <C-w><Right> <C-w>>
nnoremap <C-w><Up> <C-w>+
nnoremap <C-w><Down> <C-w>-

" Maximize window in a new tab"
nnoremap <C-w>m :tab split<CR>

" Resize all windows to default size"
nnoremap <C-w>n <C-w>=

