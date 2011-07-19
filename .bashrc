# check for interactive
[[ $- = *i* ]] || return

# shell opts: see bash(1)
shopt -s cdspell extglob histverify histappend checkwinsize no_empty_cmd_completion

[[ -r ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -z $BASH_COMPLETION && -r /etc/bash_completion ]] && . /etc/bash_completion

set -o notify           # notify of completed background jobs immediately

_expand() { return 0; } # disable tidle expansion by overriding it

# History
HISTCONTROL="ignoreboth:ignoredups"
HISTSIZE=1000
HISTFILESIZE=2000
export ${!HIST@}

# a functional but sane prompt
bash_prompt() {
    case $TERM in
      @(xterm|rxvt)*)
        local TITLEBAR='\033]0;${HOSTNAME%%.*}:${PWD/$HOME/~}\007' ;;
    esac

    local NONE="\[\e[0m\]"    # unsets color to term's fg color

    # regular colours
    local K="\[\e[0;30m\]" R="\[\e[0;31m\]" G="\[\e[0;32m\]" Y="\[\e[0;33m\]" \
                           B="\[\e[0;34m\]" M="\[\e[0;35m\]" C="\[\e[0;36m\]" W="\[\e[0;37m\]"

    # emphasized (bolded) colours
    local EMK="\[\e[1;30m\]" EMR="\[\e[1;31m\]" EMG="\[\e[1;32m\]" EMY="\[\e[1;33m\]" \
                             EMB="\[\e[1;34m\]" EMM="\[\e[1;35m\]" EMC="\[\e[1;36m\]" EMW="\[\e[1;37m\]"

    # username/host color for root/other
    (( UID != 0 )) && local UC=$W || local UC=$R
    (( UID == 0 )) && local USERSTR="${UC}\u${EMK}@" || local USERSTR=""

    if [ "$TERM" != "dumb" ]; then
      case `uname -s` in
                Darwin|FreeBSD)
                  local HOSTCOLOUR="\[\e[1;32m\]";;
                SunOS)
                  local HOSTCOLOUR="\[\e[1;31m\]";;
                *)
                  local HOSTCOLOUR="\[\e[1;35m\]";;
       esac
    fi

    RET_VALUE='$((( RET )) && printf ":\[\e[1;31m\]$RET\[\e[0m\]")'

    PS1="${TITLEBAR}[${USERSTR}${HOSTCOLOUR}\h${RET_VALUE}${NONE}:${EMB}\w${EMK}${UC}${EMK}${NONE}]\$ "
    export PS4='+$BASH_SOURCE[$LINENO]: '
}

# show return val of last command
PROMPT_COMMAND='RET=$?'
GIT_PS1_SHOWDIRTYSTATE=yes
bash_prompt
unset bash_prompt
