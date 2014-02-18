syntax on
filetype indent plugin on

scriptencoding utf-8
set encoding=utf-8
set nocompatible
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set visualbell
set t_vb=
set mouse=a
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set confirm
set shiftwidth=4
set softtabstop=4
set expandtab
set rtp+=~/.vim/bundle/vundle
set viminfo='10,\"100,:20,%,n~/.viminfo
set clipboard=unnamed
set listchars=tab:»·,trail:·
set list
hi SpecialKey ctermbg=red ctermfg=red guibg=red guifg=red

call vundle#rc()
colorscheme calmar256-dark

map Y y$
map <Space> :tabn<CR>
map <Tab> :tabn<CR>
map <CR> :nohlsearch<CR>
map N :tabnew<CR>
map . :tabc<CR>
map <C-t> :NERDTreeToggle ~/Documents/nemesis/<CR>
map <C-p> :w<CR>:!perl %<CR>
map <C-r> :w<CR>:!ruby %<CR>
nnoremap <C-L> :nohl<CR><C-L>

function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END

Bundle 'gmarik/vundle'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'vim-perl/vim-perl'
Bundle 'flazz/vim-colorschemes'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'

let g:Powerline_symbols = 'fancy'

set termencoding=utf-8
set statusline=2
set term=xterm-256color
