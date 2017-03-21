" leader definition
let mapleader = ','

" Act like modern vim instead of vi
set nocompatible

" Act like modern vim instead of vi (for pathogen)
set nocp

" Start Pathogen
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on
syntax on

" Tabs setting
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Auto Indent
set autoindent

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
set number

" Add a new line with 'O'
nmap <C-o> O<Esc>

" Save with Ctrl+s
nmap <C-s> :w<Return>
" Quit with Ctrl+q
nmap <C-q> :q<Return>

" Escape with Ctrl+l
imap <C-i> <Esc>

" No swap files
set nobackup
set nowritebackup
set noswapfile

" Continue to show previous status
set laststatus=2

" Easier navigation between splits
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>

nnoremap <M-j> :m .+1<CR>==
nnoremap <M-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Print current directory
map <C-n> :echo expand('%:p')<Return>

" Disable folding
set nofoldenable

" Start NERDTREE when opening file
"autocmd vimenter * NERDTree

" Toggle nerd tree with Ctrl+t
silent! nmap <c-t> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"Enable buffer list
let g:airline#extensions#tabline#enabled = 1

"Show Filename
let g:airline#extensions#tabline#fnamemod = ':t'

" next buffer
:nnoremap <leader>f :bnext<Return>

" previous buffer
:nnoremap <leader>d :bprevious<Return>

" close buffer
:nnoremap <leader>c :bd<Return>

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

:nnoremap <leader>v :call NumberToggle()<cr>
