#vim

My personal vim configuration. Primarily optimized for my Rails workflow but contains plugins for Javascript and friends plus Clojure.

## Prerequisites

You will need a vim install with ruby. You can check this with the following command.

    vim --version | grep ruby

Hopefully it will printout out a `+ruby`. If it doesn't, turn to [Google](https://www.google.com/search?q=how+to+install+vim+with+ruby) for help.

If you are running on a Mac, an easier alternative is to install [MacVim](https://code.google.com/p/macvim/) and create the following alias in your bash profile.

    alias vim='mvim -v'

## Installation

The install script assumes you are cloning this repo at ~/vim so you can run the following in your terminal.

    git clone git@github.com:quigkin/vim.git ~/vim && ~/vim/install

This will do the following.

* Clone this repo to ~/vim
* Backup any existing ~/.vim, ~/.vimrc, and ~/.gvimrc with a -save prefix
* Create new ~/.vim, ~/.vimrc, and ~/.gvimrc symlinks
* Clone Vundle into ~/vim
* Run Vundle in vim to install all the plugins in ~/vim/vundle.vim

## Plugin Management

I use the excellent [Vundle](https://github.com/gmarik/Vundle.vim) plugin to keep my environment clean and easy to manage.

## Highlights

If you are new to vim, the following notes might be helpful. 

My "Leader" key is mapped to the comma key. So anywhere you see `<Leader>somekey` in my [keybindings file](https://github.com/quigkin/vim/blob/master/keybindings.vim), it just means press and release `,` then press somekey.

### Navigating

Start vim in some directory and press `<Leader>N` (note the uppercase n). This will open [Nerdtree](https://github.com/scrooloose/nerdtree). Press `?` to toggle help.

Use `Ctrl+[jkhl]` to shift focus between open windows.

Press `Ctrl+p` to open the [ctrlp file finder](https://github.com/kien/ctrlp.vim).

### Tip

Since there are a lot of Ctrl key combinations, life is much better if you remap your CapsLock key to Ctrl.

## Customizing

Inevitably you will want to remap keys and change plugins to your liking. If so, you may want to fork this repo and update the install command above before you begin.

If you cloned my repo and made changes, then go ahead and fork my repo now and then run the following command substituting your repo.

    git remote set-url origin git://your.repo.here


