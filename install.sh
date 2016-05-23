#!/bin/sh
case "$OSTYPE" in
  darwin*)  os="OSX" ;; 
  linux*)   os="LINUX" ;;
esac
echo "looks like you're using"  $os
case "$os" in
  OSX) echo "running 'brew install tmux vim mosh zsh git'"&&brew install tmux vim mosh zsh;;
  LINUX) echo "running 'sudo apt-get install tmux vim mosh zsh git'"&&sudo apt-get install tmux vim mosh zsh;;
esac
echo "ok getting the dotfiles off github"
git clone https://github.com/drcable/drcables-dotfiles .dotfiles
echo "making links to ~"
ln -s ~/.dotfils/vimrc ~/.vimrc
ln -s ~/.dotfils/ ~/.zshrc
ln -s ~/.dotfils/tmux.conf ~/.tmux.conf
echo "done!"
