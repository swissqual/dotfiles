#!/bin/sh

# Install dependencies:
sudo apt-get update
sudo apt install python3 python3-pip git python3.11-venv sshpass curl wget jq unzip -y

# Install Bitwarden:
curl -L -o /tmp/bw.zip https://github.com/bitwarden/cli/releases/download/v1.22.1/bw-linux-1.22.1.zip
unzip /tmp/bw.zip -d /tmp/bw
sudo mv /tmp/bw/bw /usr/local/bin -f
sudo chmod 755 /usr/local/bin/bw
rm /tmp/bw.zip

# Install chezmoi
sudo sh -c "$(curl -fsLS get.chezmoi.io)" -- -b /usr/local/bin

# Show versions
bw --version
chezmoi --version
