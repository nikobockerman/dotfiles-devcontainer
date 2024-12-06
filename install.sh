#!/usr/bin/env bash

set -euo pipefail
set -x

# Skip completely based on environment variable
if [ -n "$DOTFILES_SKIP_INSTALL" ]; then
  # Allow forcing installation
  if [ -z "$DOTFILES_FORCE_INSTALL" ]; then
    exit 0
  fi
fi

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
