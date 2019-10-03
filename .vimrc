" leader definition
let mapleader = ' '

" Act like modern vim instead of vi
set nocompatible

" Act like modern vim instead of vi (for pathogen)
set nocp

" Start Pathogen
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on
syntax on

"""""""""""""""""""""""""""""
" (START) Tabs setting
"""""""""""""""""""""""""""""
" Every tab character displays as 2 columns
set tabstop=2
" Every time tab is hit it should produce 2 spaces
set softtabstop=2
" Re-indenting (<</>>) and auto C-style indentation always adjusts by 2 spaces
set shiftwidth=2
" Hitting the tab key should produce the correct number of spaces
set expandtab

set smarttab

" Auto Indent
set autoindent

" Set tab spacing to 2 spaces for YAML files
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2

"""""""""""""""""""""""""""""
" (END) Tabs setting
"""""""""""""""""""""""""""""

" Set standard colors
set t_Co=256

" Update comment colors
hi Comment ctermfg=119

" Ignore case in search by default
set ignorecase

" If there is a capital letter, search becomes case-sensitive
set smartcase

" Highlight searches
set hlsearch

" Highlight search results as you type
set incsearch

" Enable backspace in insert mode
set backspace=indent,eol,start

" Get line numbers
"set number

" Add a new line with 'O'
:nmap <C-o> O<Esc>

" Save with Ctrl+s
:nmap <C-s> :w<CR>

" Quit with Ctrl+q
:nmap <C-q> :q<CR>

" Exit Insert Mode with Ctrl-j
:inoremap <C-l> <Esc>

" No swap files
set nobackup
set nowritebackup
set noswapfile

" Continue to show previous status
set laststatus=2

" Easier navigation between splits
:noremap <C-J> <C-W><C-J>
:noremap <C-K> <C-W><C-K>
:noremap <C-L> <C-W><C-L>
:noremap <C-H> <C-W><C-H>

" Remap Insert mode scrolling keys to Normal mode scrolling keys
:inoremap <C-E> <C-X><C-E>
:inoremap <C-Y> <C-X><C-Y>

" In Insert mode scrolling, at least 3 lines are kept on screen
"set scrolloff=3

" Enter paste mode
:nnoremap <leader>p :set paste<CR>

" Exit paste mode
:nnoremap <leader>P :set nopaste<CR>

" Move line down
":nnoremap <leader>e :m .+1<CR>==

" Move line up
":nnoremap <leader>w :m .-2<CR>==

" Remove highlights
:nnoremap <leader>m :noh<CR>

" Clear all alphanumeric marks
command! Clearm delm! | delm A-Z0-9

" Print current directory
:map <C-n> :echo expand('%:p')<CR>

" Disable folding
set nofoldenable

" Start NERDTREE when opening file
"autocmd vimenter * NERDTree

" Toggle nerd tree with Ctrl+t
silent! nmap <c-t> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Enable buffer list
let g:airline#extensions#tabline#enabled = 1

" Use '>' as the separator between filenames in the buffer list
let g:airline#extensions#tabline#left_sep = '>'
let g:airline#extensions#tabline#left_alt_sep = '>'

" Show Filename
let g:airline#extensions#tabline#fnamemod = ':t'
"
" Set airline theme
let g:airline_theme='deus'

" next buffer
:nnoremap <leader>f :bnext<CR>

" previous buffer
:nnoremap <leader>d :bprevious<CR>

" close buffer
:nnoremap <leader>c :bd<CR>

" Toggle relative numbering
function! NumberToggle()
    if(&relativenumber == 1)
        set number
        set norelativenumber
    else
        set nonumber
        set relativenumber
    endif
endfunc

":nnoremap <leader>v :call NumberToggle()<cr>

" Nerdtree colors
:hi Directory guifg=#FF0000 ctermfg=red

" Reload VIMRC with ,-R
:nnoremap <leader>r :so ~/.vimrc<CR>

" Set standard colors
set t_Co=256

" Update comment colors
hi Comment ctermfg=119

" Change search result highlight color
hi Search ctermfg=White ctermbg=Magenta cterm=underline

"""""""""""""""""""""""
" Window split shortcuts
"""""""""""""""""""""""

" Split vertically
:nnoremap <leader>s :vs <CR>

" Split horizontally
:nnoremap <leader>S :sp <CR>

" Grow horizontally
:nnoremap <leader>j 5<C-W>>

" Shrink horizontally
:nnoremap <leader>J 5<C-w><

" Grow vertically
:nnoremap <leader>k 5<C-w>+

" Grow vertically
:nnoremap <leader>K 5<C-w>-

" Fill screen width
:nnoremap <leader>O <C-w>_

" Fill screen height
:nnoremap <leader>o :vertical resize <CR>

" Resize all splits equal
:nnoremap <leader>u <C-w>=

" Easier way to access Ctrl-W
:nnoremap <leader>w <C-w>


" In Normal mode, when the cursor is over a filepath, type 'gfn' to open the
" file in a new split
:nnoremap gn :vertical wincmd f<CR>

" Move cursor to start of line
:nnoremap <leader>a ^

" Move cursor to end of line
:nnoremap <leader>e $

" Move screen up and down as block
":nnoremap <C-j> <C-e>
":nnoremap <C-k> <C-y>

" Remap // in visual mode to do search for highlighted text
:vnoremap // y/<C-R>"<CR>

" Alt-d/Alt-j to shift page down one line
:execute "set <M-j>=\ej"
:nnoremap <M-j> <C-e>
:execute "set <M-d>=\ed"
:nnoremap <M-d> <C-e>

" Alt-f/Alt-k to shift page up one line
:execute "set <M-f>=\ef"
:nnoremap <M-f> <C-y>
:execute "set <M-k>=\ek"
:nnoremap <M-k> <C-y>
