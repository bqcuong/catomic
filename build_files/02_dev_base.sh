#!/bin/bash
set -eou pipefail

source /ctx/utils/copr-helpers.sh

copr_install_isolated "dejan/lazygit" lazygit

# TODO: neovim will be pre-installed in Fedora 25
dnf5 install -y \
    zsh btop fd-find \
    neovim python3-neovim \
    golang

# Atuin for managing shell history
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh -s -- --non-interactive