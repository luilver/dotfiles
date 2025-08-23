# Install packages

apps=(
	apt-transport-https
    build-essential
    bruno-cli
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
    psgrep
    shellcheck
	software-properties-common
    tree
    neovim
    wget
)

sudo apt install -y "${apps[@]}"

