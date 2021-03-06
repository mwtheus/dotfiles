#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

git_current_branch () {
  branch=$(git branch --show-current 2>/dev/null)

  [[ ! -z "$branch" ]] && echo "$branch" || echo "#"
}

PS1='\033[1;32m\u \033[1;34m\W \033[1;33m$(git_current_branch) \033[0m\$ '

alias ls='ls --group-directories-first --color=auto'
alias lsa='ls -al'
alias diff='diff --color=auto'
alias grep='grep --line-number --color=auto'
alias feh='feh --scale-down --image-bg black'
alias xterm='xterm -b 8'
