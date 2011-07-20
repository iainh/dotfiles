export EDITOR=vim
export VISUAL=$EDITOR
export PAGER=less

# Potential path elements. Add 'em if you got 'em
PPE=( '/usr/local/bin' '/usr/local/sbin' )

for p in "${PPE[@]}"
do  
  [[ -d $p ]] && PATH=$PATH:$p
done

# Selective PATH elements based on platform
case `uname -s` in
  Darwin|FreeBSD)
    [[ -d /opt/local/bin ]] && PATH=/opt/local/bin:$PATH
    ;;
  SunOS)
    [[ -d /usr/sfw/bin ]] && PATH=$PATH:/usr/sfw/bin
    [[ -d /opt/csw/bin ]] && PATH=/opt/csw/bin:$PATH
    ;;
  *)
    ;;
esac

# if interactive, source .bashrc
[[ -n $PS1 && -f ~/.bashrc ]] && . ~/.bashrc
