#!/usr/bin/env bash

set -euo pipefail
set -x

# Initialize .config contents
mkdir ~/.config
pushd config
targetPath=$(realpath .)
for d in *; do
  rm -rf ~/.config/"$d"
  ln -s "$targetPath"/"$d" ~/.config/"$d"
done
popd

# Launch fish shell from .bashrc on interactive sessions
cat <<EOF >> ~/.bashrc

exec fish
EOF
