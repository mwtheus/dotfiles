if grep -q MINGW64 /proc/version; then cd $HOME; fi

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}

export PS1='\033[1;32m\u \033[1;34m\W\033[1;33m$(parse_git_branch)\033[0m \$ '

alias ls='ls --color=auto --group-directories-first'
alias diff='diff --color=auto'
alias grep='grep -n --color=auto'

alias cli="node $HOME/source/cli/main.js"
