colorscheme molokai

syntax on

filetype on
filetype indent on
filetype plugin on

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
set mouse=a
set shiftwidth=2
set visualbell

set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " buffer number, and flags
set statusline+=%f\                    	  " relative path
set statusline+=%8*%{rvm#statusline()}
set statusline+=%#ErrorMsg#%{fugitive#statusline()}%#StatusLine#
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
let g:ruby_conque_rspec_runner='rspec'
let g:ruby_conque_cucumber_runner='cucumber'
nmap <silent> <Leader>rf :call RunRspecCurrentFileConque()<CR>
nmap <silent> <Leader>rl :call RunRspecCurrentLineConque()<CR>
nmap <silent> <Leader>cf :call RunCucumberCurrentFileConque()<CR>
nmap <silent> <Leader>cl :call RunCucumberCurrentLineConque()<CR>
nmap <silent> <Leader>rr :call RunRakeConque()<CR>
nmap <silent> <Leader>rp :call RunLastConqueCommand()<CR>
nmap <F8> :TagbarToggle<CR>
call pathogen#infect()
