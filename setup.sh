#!/bin/bash

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles. Do this for all the .dotfiles
declare -a dotfilenames=(".bash_profile"
".bashrc"
".condarc"
".git"
".macos"
".tmux.conf"
".vimrc"
".zshrc"
)

for dotfile in "${dotfilenames[@]}"
do
	rm -rf $HOME/$dotfile
	ln -s $HOME/.dotfiles/$dotfile $HOME/$dotfile
done
