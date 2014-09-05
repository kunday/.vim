## Install
To get vundle setup in the box, run

    make

Once that completes, launch vim, you might see some errors/
warnings, it's safe to ignore them for now. Now run

    VundleInstall

This will take a few minutes.

Once this is complete relaunch vim.

## Macvim fixes.

To fix the maximise button, please use
defaults write org.vim.MacVim MMZoomBoth 1
