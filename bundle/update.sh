#!/bin/sh

BUNDLES="$HOME/.vim/bundle/"
cd $BUNDLES

for plugin in $(ls -d */)
do
    cd $plugin
    echo -n "Updating $(basename $plugin)... "
    git pull
    cd ..
done
