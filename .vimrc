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
" Every tab character displays as 4 columns
set tabstop=4
" Every time tab is hit it should produce 4 spaces
set softtabstop=4
" Re-indenting (<</>>) and auto C-style indentation always adjusts by 4 spaces
set shiftwidth=4
" Hitting the tab key should produce the correct number of spaces
set expandtab

set smarttab

" Auto Indent
set autoindent

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
set number

" Add a new line with 'O'
:nmap <C-o> O<Esc>

" Save with Ctrl+s
:nmap <C-s> :w<Return>

" Quit with Ctrl+q
:nmap <C-q> :q<Return>

" Exit Insert Mode with Ctrl-j
:inoremap <C-j> <Esc>

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
set scrolloff=3

" Enter paste mode
:nnoremap <leader>p :set paste<CR>

" Exit paste mode
:nnoremap <leader>P :set nopaste<CR>

" Move line down
:nnoremap <leader>e :m .+1<CR>==

" Move line up
:nnoremap <leader>w :m .-2<CR>==

" Remove highlights
:nnoremap <leader>m :noh<CR>

" Clear all alphanumeric marks
command! Clearm delm! | delm A-Z0-9

" Print current directory
:map <C-n> :echo expand('%:p')<Return>

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

" Nerdtree colors
:hi Directory guifg=#FF0000 ctermfg=red

" Reload VIMRC with ,-R
:nnoremap <leader>r :so ~/.vimrc<Return>

" Set standard colors
set t_Co=256

" Update comment colors
hi Comment ctermfg=119

" Change search result highlight color
hi Search ctermfg=White ctermbg=Magenta cterm=underline
