syntax on
filetype indent plugin on

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

call vundle#rc()
colorscheme darkblue

map Y y$
map <Space> :tabn<CR>
map <Tab> :tabn<CR>
map <CR> :nohlsearch<CR>
map N :tabnew<CR>
map n :tabnew<CR>
map . :tabc<CR>
map T :NERDTreeToggle ~/Documents/nemesis/<CR>
map t :NERDTreeClose<CR>
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
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'

set encoding=utf-8
set termencoding=utf-8
set statusline=2

let g:Powerline_symbols = 'fancy'

set term=xterm-256color
