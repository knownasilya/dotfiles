dotfiles
========

Files like .bash_profile, .vimrc, etc..


## Setting Up Vim
Copy `colors` and `bundle` directories to `~/.vim/`

For `vim-airline` to work, you must install these [fonts][fonts]
and set them as your default font (both font selections) in iTerm2 (or whatever terminal you are using). Also might require vertical line height and contrast changes in iTerm2.


### Install Plugins

```bash
vim +BundleInstall
```

[fonts]: https://github.com/Lokaltog/powerline-fonts/tree/master/SourceCodePro
