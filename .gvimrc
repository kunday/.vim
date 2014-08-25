set guioptions-=T
colorscheme wombat
set guifont=Inconsolata
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> <Plug>PeepOpen
  set guifont=Monaco:h14
end
