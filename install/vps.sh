# Install packages

apps=(
    ag
	build-essential
    bruno
    cmake
    colima
    docker
    dockutil
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

apt install "${apps[@]}"
