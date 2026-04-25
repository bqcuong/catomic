#!/bin/bash
set -oue pipefail

source /ctx/utils/copr_helpers.sh

copr_install_isolated "lizardbyte/stable" Sunshine

setcap 'cap_sys_admin+p' $(readlink -f /usr/bin/sunshine)
