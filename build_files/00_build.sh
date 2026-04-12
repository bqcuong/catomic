#!/bin/bash
set -ouex pipefail

echo "Execute build scripts..."
for script in /ctx/*.sh; do
    if [[ "$(basename "$script")" != "00_build.sh" ]]; then
        if [[ -x "$script" ]]; then
            echo "Executing $script..."
            "$script"
        fi
    fi
done
echo "Build scripts execution completed!"