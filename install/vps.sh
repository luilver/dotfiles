# Install packages

apps=(
    apt-transport-https
    build-essential
    ca-certificates
    curl
    cmake
    ffmpeg
    git
    gpg
    hub
    httpie
    imagemagick
    jq
    peco
    shellcheck
    software-properties-common
    tree
    neovim
    wget
)

sudo apt install -y "${apps[@]}"

