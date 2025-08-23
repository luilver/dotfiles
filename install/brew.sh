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
