" Enable pathogen
call pathogen#infect()

set nocompatible

set exrc

syntax on

set smartindent

set background=dark

set ignorecase
set smartcase
set hlsearch
set incsearch
set hidden

set scrolloff=5
set nonumber
set showcmd

"set showbreak=+
set showbreak=↪
set wildmenu
set wildmode=list:longest
set wildignore+=*.o,*.hi,*.aux,*.out,*.toc,.hg,.git,.svn,*.dep,*.lo,*.la
set undofile
set undodir=$HOME/.vim/undo,.

set spelllang=cs
set nojoinspaces

set completeopt=longest,menuone

set tabstop=4
set shiftwidth=4
set softtabstop=4 " backspace deletes up to 4 spaces
set expandtab

set foldmethod=syntax
set foldlevel=5

set formatoptions+=ro

set autoread

filetype plugin indent on

if has("gui_running")
    let g:Powerline_symbols = 'fancy'
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
else
    let g:Powerline_loaded = 1
endif

" Resize windows when terminal window changes size
augroup general
    autocmd!
    autocmd VimResized * exe "normal! \<c-w>="
augroup END

augroup filetype_vala
    autocmd!
    autocmd BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
    autocmd BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
augroup END

" highlight VSC conflicting line
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

"runtime! indent.vim

map <F5>r :syntax off:syntax on
map <F5>h /\(^\\| \)[iovksvzu]\( \\|$\)/
map <F5>f :set textwidth=75
map <Leader><Space> :noh<Cr>

" Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp
" Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

" Highlight invisible characters
set listchars=tab:▸\ ,eol:¬
map <leader>l :set list!<CR>

nnoremap <F6> :GundoToggle<CR>

let g:ctrlp_extensions = ['tag']
" List all files in given directory, respecting .gitignore and .agignore
let g:ctrlp_user_command = 'ag -g "" %s'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" TagBar settings
nnoremap <silent> <F7> :TagbarToggle<CR>
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1
let g:tagbar_sort = 0
