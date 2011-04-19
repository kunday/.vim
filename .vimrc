colorscheme molokai

syntax on

set hlsearch
set number
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

set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " buffer number, and flags
set statusline+=%f\                    	  " relative path
set statusline+=%{rvm#statusline()}
set statusline+=%#ErrorMsg#%{fugitive#statusline()}%#StatusLine#
set statusline+=%=                        " seperate between right- and left-aligned
set statusline+=%1*%y%*%*\                " file type
set statusline+=%10(L(%l/%L)%)\           " line
set statusline+=%2(C(%v/125)%)\           " column
set statusline+=%P                        " percentage of file
set statusline+=%#warningmsg#
set statusline+=%*

"Show trailing Whitespaces
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

"Highlight too-long lines
autocmd BufRead,InsertEnter,InsertLeave * 2match LineLengthError /\%126v.*/
highlight LineLengthError ctermbg=red guibg=red
autocmd ColorScheme * highlight LineLengthError ctermbg=black guibg=black

map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>fb :FufBuffer<CR>
map <silent> <LocalLeader>fl :FufLine<CR>
