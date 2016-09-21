set shell=/bin/bash
set hlsearch
set nocompatible
set showmatch
set incsearch
set ignorecase
set smartcase
set scrolloff=10
set wrap
set ruler
set directory=/tmp
set laststatus=2
set tabstop=2
set shiftwidth=2
set shiftwidth=2
set tabstop=2
set visualbell
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'thoughtbot/vim-rspec'
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'comments.vim'
Plugin 'FuzzyFinder'
Plugin 'Tagbar'
Plugin 'ack.vim'
Plugin 'bufexplorer.zip'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'htacg/tidy-html5'
Bundle 'KurtPreston/vim-autoformat-rails'
Plugin 'SuperTab'
Plugin 'taskpaper.vim'
Plugin 'Gundo'
Plugin 'rails.vim'
Plugin 'ruby.vim'
Plugin 'Align'
Plugin 'AutoAlign'
Plugin 'eruby.vim'
Plugin 'snipmate-snippets'
Plugin 'wombat256.vim'
Plugin 'cecutil'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-salve'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'mhinz/vim-startify'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'molokai'

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme molokai
syntax on
compiler ruby

map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>fb :FufBuffer<CR>
map <silent> <LocalLeader>nh :noh<CR>
map <space> \ef
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

set expandtab
au FileType json setlocal equalprg=python\ -m\ json.tool

" Rainbow Parantheses related stuff.
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max            = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" CtrlP related stuff
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = {
      \ 'dir': '\.git$\|\.hg$\|\.svn$\|target$\|bower_components$\|dist$\|node_modules$\|virtual_env$'
      \ }
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

highlight ExtraWhitespace ctermbg=yellow
autocmd BufWritePre * StripWhitespace
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep     = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='murmur'
