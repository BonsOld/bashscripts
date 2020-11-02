#!/bin/bash
# Benson Young
# This script lists the information of your current directory
echo "The number of files is `ls -l|grep -c ^-`"
echo "The number of directories is `ls -l|grep -c ^d`"
echo "The biggest file is `ls -S|head -1`"
echo "The most recently modified file is `ls -t|head -1`"
echo "Owners of files in this directory are:`ls -l|awk '{print $3}'|sort|uniq|tr '\n' ' '`"
echo "The total size of the directory is `du -hs | awk '{print $1}'`"
