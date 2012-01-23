#!/bin/bash

# install source target
install()
{
    ln -fvs "$(pwd)/$1" "$2"
}

for f in bashrc bash_aliases bash_functions; do
    install $f ~/.$f
done
