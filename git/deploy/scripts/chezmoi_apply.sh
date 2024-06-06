#!/bin/sh

# Login Bitwarden (interactive)
bw config server https://f60bsjkzjhjy0dvj.myfritz.net
export BW_SESSION=$(bw login norabuild@work --raw)

# Init / apply chezmoi
chezmoi init https://github.com/swissqual/dotfiles.git --branch sqml01-hetzner
chezmoi update

# Bitwarden logout
bw logout
unset BW_SESSION
