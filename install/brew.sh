# Install Homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade

# Install packages

apps=(
    ag
    bruno-cli
    byobu
    cmake
    colima
    coreutils
    docker
    ffmpeg
    flyctl
    git
    gnu-sed
    grep
    gpg
    hub
    httpie
    imagemagick
    jq
    node
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
    yarn
)

brew install "${apps[@]}"
