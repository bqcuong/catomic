#!/bin/bash
set -eou pipefail

source /ctx/utils/copr_helpers.sh

copr_install_isolated "dejan/lazygit" lazygit

# TODO: neovim will be pre-installed in Fedora 25
dnf5 install -y \
    zsh btop fd-find atuin \
    neovim python3-neovim \
    golang