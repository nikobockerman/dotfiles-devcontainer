#!/usr/bin/env bash

set -euo pipefail
set -x

# Initialize .config contents
pushd config
targetPath=$(realpath .)
for d in *; do
  ln -s "$targetPath"/"$d" ~/.config/"$d"
done
popd

# Launch fish shell from .bashrc on interactive sessions
cat <<EOF >> ~/.bashrc

exec fish
EOF
