#!/bin/sh

# Create Python deploy venv
mkdir ~/.venvs
export venvs=~/.venvs
alias python=python3
python -m venv $venvs/deploy
source $venvs/deploy/bin/activate

# Install ansible
pip install ansible
ansible-galaxy role install geerlingguy.docker

# Show versions
python --version
ansible --version
