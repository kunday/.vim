set guioptions-=T
set guifont=Inconsolata\ 12
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> <Plug>PeepOpen
  set guifont=Inconsolata-dz:h16
end
