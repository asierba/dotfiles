#!/bin/sh

echo "Installing scripts and config files..."

echo ""
echo "(Re)creating a symbolic link for each script to point to them from the ~ folder..."
cd scripts
ls * | xargs -I {}  ln -fs $(pwd)/{} /usr/local/bin/{} 
cd -

if ! grep -q "source $(pwd)/.zshrc" ~/.zshrc; then # check if aliases have been imported already
    echo "importing custom .zshrc in main .zshrc file.."
    echo "backing up.. ~/.zshrc.bak"
    cp ~/.zshrc ~/.zshrc.bak
    echo "source $(pwd)/.zshrc" >> ~/.zshrc
fi
