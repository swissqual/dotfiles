#!/bin/sh

# Login Bitwarden (interactive)
bw config server https://f60bsjkzjhjy0dvj.myfritz.net
export BW_SESSION=$(bw login dvdex@solnet.ch --raw)

# Init / apply chezmoi
chezmoi init https://github.com/swissqual/dotfiles.git --branch zoorola
chezmoi update

# Bitwarden logout
bw logout
unset BW_SESSION
