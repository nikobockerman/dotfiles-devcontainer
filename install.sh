#!/usr/bin/env bash

set -euo pipefail
set -x

# Prepare directories
mkdir -p ~/.cache/python/pycache

# Initialize .config contents
mkdir ~/.config || true
pushd config
targetPath=$(realpath .)
for d in *; do
  rm -rf ~/.config/"$d"
  ln -s "$targetPath"/"$d" ~/.config/"$d"
done
popd

# Install scripts to .local/bin
mkdir -p ~/.local/bin
pushd bin
targetPath=$(realpath .)
for f in *; do
  rm -f ~/.local/bin/"$f"
  ln -s "$targetPath"/"$f" ~/.local/bin/"$f"
done
popd

# Initialize custom configs
mkdir -p ~/.aws
pushd custom-configs
targetPath=$(realpath .)
ln -s "$targetPath"/aws-config ~/.aws/config
popd

# Launch fish shell from .bashrc on interactive sessions
cat <<EOF >> ~/.bashrc

exec fish
EOF
