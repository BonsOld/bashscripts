#!/usr/bin/bash
# Exports scripts from the current directory to ~/.local/bin and removes the .sh from the name
cp $1 ~/.local/bin
mv ~/.local/bin/$1 ~/.local/bin/`ls $1 | awk -F. '{print $1}'`
