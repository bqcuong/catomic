#!/bin/bash
set -oue pipefail

copr_install_isolated "lizardbyte/stable" Sunshine

setcap 'cap_sys_admin+p' $(readlink -f /usr/bin/sunshine)
