install:
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	ln -s .vimrc $HOME/.vimrc
	ln -s .gvimrc $HOME/.gvimrc
clean:
	rm -rf bundle/
