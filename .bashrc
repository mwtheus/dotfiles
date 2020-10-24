#!/bin/bash

[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto --group-directories-first'
alias lsa='ls -al'
alias diff='diff --color=auto'
alias grep='grep -n --color=auto'
