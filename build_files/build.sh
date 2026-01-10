#!/bin/bash

set -ouex pipefail

# Install packages
dnf5 install -y \
	zsh \
	htop \
	golang

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
