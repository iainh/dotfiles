if [ "$TERM" != "dumb" ]; then
  case `uname -s` in
    Darwin|FreeBSD)
      alias ls='ls -G';;
    SunOS)
      alias ls='ls';;
    *)
      alias ls='ls --color=auto';
      alias grep='grep --colour';
      alias du='du -c';;
  esac
fi

# Some aliases for common typos...
alias bim='vim'
alias cim='vim'
alias pign='ping'

alias df='df -h'
alias du='du -h'
alias g="grep"
alias pgrep='pgrep -lf'
