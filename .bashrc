if grep -q MINGW64 /proc/version; then cd $HOME; fi

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}

export PS1="\[\033[32m\]\u \[\033[34m\]\W\[\033[33m\]$(parse_git_branch)\[\033[00m\] $ "

alias ls='ls --color=auto --group-directories-first'
alias diff='diff --color=auto'
alias grep='grep -n --color=auto'

alias cli="node $HOME/source/cli/index.js"
alias api="node $HOME/source/apis/index.js"
alias web="live-server $HOME/source/web"
