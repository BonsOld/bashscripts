#!/usr/bin/bash
# Exports scripts from the current directory to ~/.local/bin and removes the .sh from the name
echo "Which script is being exported?"
read file
cp $file ~/.local/bin
mv ~/.local/bin/$file ~/.local/bin/`ls $file | awk -F. '{print $1}'`
