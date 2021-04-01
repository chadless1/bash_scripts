#!/usr/bin/env bash
#
# BY: chadless1
#
# Description:
# instead of using rm or an alias
# move files to trash folder
# located ~/.local/usr/share/Trash/files

# takes one argument

if [ -z $1 ]
then
        echo;
        echo "   No File was given";
        echo;
        echo " use - trash FILENAME - to execute command";
        echo;
else
        mv $1 ~/.local/share/Trash/files/;
fi
