#!/bin/sh

# Run "git pull" to update dotfiles repository within a devcontainer

set -eu

repository=~/dotfiles

cd $repository
git pull
