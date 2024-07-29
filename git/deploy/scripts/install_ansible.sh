#!/bin/sh

# Create Python deploy venv
mkdir ~/.venvs
python3 -m venv ~/.venvs/deploy
source ~/.venvs/deploy/bin/activate

# Install ansible
pip install ansible==9.8.0
ansible-galaxy role install geerlingguy.docker

# Show versions
python3 --version
ansible --version
