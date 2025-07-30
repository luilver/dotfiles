# Install Homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade

# Install packages

apps=(
    ag
    bruno
    byobu
    # bash-completion2
    cmake
    colima
    coreutils
    docker
    dockutil
    ffmpeg
    flyctl
    # gifsicle
    git
    gnu-sed
    grep
    gpg
    hub
    httpie
    imagemagick
    jq
    # mackup
    openapi-generator
    peco
    psgrep
    python
    shellcheck
    ssh-copy-id
    tree
    neovim
    volta
    wget
)

brew install "${apps[@]}"

# Git comes with diff-highlight, but isn't in the PATH
ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight
