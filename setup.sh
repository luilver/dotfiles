#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXTRA_DIR="$HOME/.extra"

# Update dotfiles itself first
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Bunch of symlinks
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/gem/.gemrc" ~

# Package managers & packages
if grep -qi "ubuntu" /etc/os-release; then
    echo "Running on Ubuntu"
    # Now check if GUI is available
    if [ -n "$DISPLAY" ] || systemctl get-default | grep -q graphical.target; then
        . "$DOTFILES_DIR/install/brew.sh"
    else
        . "$DOTFILES_DIR/install/brew-cli.sh"
    fi
fi

# Cool stuff
if [ "$(uname)" == "Darwin" ]; then
    echo "Running on Darwin"
    . "$DOTFILES_DIR/install/brew.sh"
    . "$DOTFILES_DIR/install/brew-cask.sh"
fi

# Install extra stuff
if [ -d "$EXTRA_DIR" -a -f "$EXTRA_DIR/install.sh" ]; then
    . "$EXTRA_DIR/install.sh"
fi
