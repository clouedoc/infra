#!/bin/bash
# https://gist.github.com/clouedoc/99347e2d93ff5749b761e294a84a2886
# https://bit.ly/3p5wgmR

# This script installs the dependencies
# for a k3s node of the camillou-cluster

# Hardware dependencies:
#   - 1 CPU
#   - 512MB RAM
#   - ext4 filesystem

# Software dependencies:
#   - Manjaro Linux
# All other software dependencies are installed below.

# Disable swap
swapoff -a

# [Longhorn] Dependencies
pacman -S open-iscsi jq
systemctl enable iscsid
systemctl start iscsid
# [Longhorn] Check that dependencies are correctly installed
curl -sSfL https://raw.githubusercontent.com/longhorn/longhorn/v1.2.2/scripts/environment_check.sh | bash
# [Longhorn] NFSv4 and cryptsetup
# (already installed under Manjaro)

# Install k3s
# Server:
# curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--secrets-encryption --tls-san 82.65.213.89" sh -
curl -sfL https://get.k3s.io | K3S_URL=https://192.168.1.4:6443 K3S_TOKEN=K106279aa44124482093c2ab44e450391bcf312042dee066314535d940d00c47c44::server:b55843e49f781b765113b794c392bddc sh -
