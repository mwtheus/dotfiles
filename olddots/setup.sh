#!/bin/bash

[[ -z $(grep 'dotfiles/src' $HOME/.profile) ]] &&
  echo "export PATH=\"$(pwd)/src:\$PATH\"" >> $HOME/.profile

for item in .*; do 
  [[ -z $(grep $item ./etc/ln_ignore) ]] && ln -s $(pwd)/$item $HOME
done
