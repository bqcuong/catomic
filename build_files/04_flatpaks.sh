#!/bin/bash
set -eou pipefail

FLATPAK_LIST=$(echo \
app/com.valvesoftware.Steam/x86_64/stable \
app/net.lutris.Lutris/x86_64/stable \
app/org.DolphinEmu.dolphin-emu/x86_64/stable \
app/info.cemu.Cemu/x86_64/stable \
app/io.github.radiolamp.mangojuice/x86_64/stable \
| tr '\n' ' ')

flatpak --system -y install --reinstall --or-update ${FLATPAK_LIST}