# Install extra packages (not with apt)

sudo apt autoremove

echo "Installing extra packages: "

echo "  ngrok: "
. "$EXTRA_DIR/ngrok.sh"

echo "  docker"
. "$EXTRA_DIR/docker.sh"
