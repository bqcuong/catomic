#!/bin/bash
set -eou pipefail

FLATPAK_LIST=$(echo \
app/com.mattjakeman.ExtensionManager/x86_64/stable \
app/org.mozilla.firefox/x86_64/stable \
app/com.rawtherapee.RawTherapee/x86_64/stable \
app/org.texstudio.TeXstudio/x86_64/stable \
runtime/org.freedesktop.Sdk.Extension.texlive//25.08 \
| tr '\n' ' ')

flatpak --system -y install --reinstall --or-update ${FLATPAK_LIST}