#!/bin/bash

set -ouex pipefail

# Install packages
dnf5 install -y \
	zsh \
	htop \
	golang
