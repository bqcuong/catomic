#!/bin/bash
set -oue pipefail

cat > /etc/yum.repos.d/antigravity.repo << 'EOF'
[antigravity-rpm]
name=Antigravity RPM Repository
baseurl=https://us-central1-yum.pkg.dev/projects/antigravity-auto-updater-dev/antigravity-rpm
enabled=1
gpgcheck=0
EOF

dnf install -y antigravity

# cleanup repo file
rm -rf /etc/yum.repos.d/antigravity.repo