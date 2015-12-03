set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-scripts/Conque-Shell'
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
Plugin 'molokai'
Plugin 'Color-Sampler-Pack'
Plugin 'cecutil'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'kien/rainbow_parentheses.vim'

Plugin 'tpope/vim-salve'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme Tomorrow-Night-Eighties

syntax on

compiler ruby

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
set cursorline
set tabstop=2
set shiftwidth=2
set shiftwidth=2
set visualbell

set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " buffer number, and flags
set statusline+=%f\                    	  " relative path
set statusline+=%=                        " seperate between right- and left-aligned
set statusline+=%1*%y%*%*\                " file type
set statusline+=%10(L(%l/%L)%)\           " line
set statusline+=%2(C(%v/125)%)\           " column
set statusline+=%P                        " percentage of file
set statusline+=%#warningmsg#
set statusline+=%*

"Pimping colors
hi User1 gui=NONE ctermfg=White        ctermbg=DarkGray  guifg=#a7dfff guibg=#333333 " File name
hi User2 gui=NONE ctermfg=LightRed     ctermbg=DarkGray  guifg=#ff9999 guibg=#333333 " File Flag
hi User3 gui=NONE ctermfg=White        ctermbg=DarkGray  guifg=#ffffff guibg=#333333 " File type
hi User4 gui=NONE ctermfg=Green        ctermbg=DarkGray  guifg=#90ff90 guibg=#333333 " Fugitive
hi User5 gui=NONE ctermfg=LightYellow  ctermbg=DarkGray  guifg=#ffffa0 guibg=#333333 " RVM
hi User6 gui=NONE ctermfg=White        ctermbg=DarkRed   guifg=#ffffff guibg=#af0000 " Syntax Errors
hi User7 gui=NONE ctermfg=White        ctermbg=Yellow    guifg=#ffff00 guibg=#333333
hi User8 gui=NONE ctermfg=Magenta      ctermbg=DarkGray  guifg=#99a0f9 guibg=#333333 " Position


"Show trailing Whitespaces
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

""Highlight too-long lines
"autocmd BufRead,InsertEnter,InsertLeave * 2match LineLengthError /\%126v.*/
"highlight LineLengthError ctermbg=red guibg=red
"autocmd ColorScheme * highlight LineLengthError ctermbg=black guibg=black

map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>fb :FufBuffer<CR>
map <silent> <LocalLeader>fl :FufLine<CR>
map <silent> <LocalLeader>nh :noh<CR>
map <silent> <LocalLeader>nh :noh<CR>
map <space> \ef
set expandtab
autocmd FileType gitcommit DiffGitCached | wincmd p
au FileType json setlocal equalprg=python\ -m\ json.tool
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

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
