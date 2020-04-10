#!/bin/sh
basepath=$(cd `dirname $0`; pwd)
EMACS=$basepath/emacs

for file in $(ls $EMACS)
do
    newfile=$(echo $file | sed 's/^/./g')
    echo "---"
    echo $newfile
    echo "---"
    ln -s $EMACS/$file $HOME/config/${newfile}
done
