#!/bin/sh

# Install ansible
pip install ansible==9.8.0
ansible-galaxy role install geerlingguy.docker

# Show versions
python3 --version
ansible --version
