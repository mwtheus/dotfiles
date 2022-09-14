#!/bin/bash

man="setup - add your short description

DESCRIPTION
        add your long description

ARGUMENTS
        [ARGUMENT]
            argument description

USAGE
        ./setup.sh [ARGUMENT]"

if [[ "$1" == "-h" ]]; then
  echo "$man"
  exit 1
fi

for item in .*; do
  if [[ -z $(grep $item ./etc/ln_ignore) ]]; then
    mv $HOME/$item $HOME/$item\_bkp_current_time
    ln -sf $(pwd)/$item $HOME
  fi
done
