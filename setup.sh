#!/bin/bash

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles. Do this for all the .dotfiles
dotfilenames = (
".bash_profile"
".bashrc"
".condarc"
".git"
".macos"
".tmux_conf"
".vimrc"
".zshrc"
)

for dotfile in $(dotfilenanes); do
	rm -rf $HOME/$(dotfile)
	ln -sw $HOME/.dotfiles/$(dotfile) $HOME/$(dotfile)
done

