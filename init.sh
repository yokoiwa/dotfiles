git config --global user.email "admin@yokoiwahiroki.name"
git config --global user.name "yokoiwahiroki"

sudo apt update
sudo apt -y upgrade

sudo apt install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg2 \
  software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

sudo apt-get update

sudo apt install -y \
  docker-ce docker-ce-cli containerd.io \
  tmux zsh

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

docker build -t spacemacs ./docker/spacemacs

cp -rf \
  ./.tmux.conf \
  ./.zshrc \
  ~/


