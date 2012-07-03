# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate _prefix
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=0
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/john/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd beep nomatch notify
bindkey -e
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
# End of lines configured by zsh-newuser-install

# Manually set
setopt incappendhistory sharehistory
setopt extendedhistory
# offer indexes before parameters in subscripts
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

# command for process lists, the local web server details and host completion
# on processes completion complete all user processes
# zstyle ':completion:*:processes' command 'ps -au$USER'

## add colors to processes for kill completion
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

#zstyle ':completion:*:processes' command 'ps ax -o pid,s,nice,stime,args | sed "/ps/d"'
zstyle ':completion:*:*:kill:*:processes' command 'ps --forest -A -o pid,user,cmd'
zstyle ':completion:*:processes-names' command 'ps axho command' 
#




#prompt settings
autoload colors zsh/terminfo
if [[ "$terminfo[colors]" -ge 8 ]]; then
    colors
fi
for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
    eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
    eval PR_LIGHT_$color='%{$fg[${(L)color}]%}'
    (( count = $count + 1 ))
done
PR_NO_COLOR="%{$terminfo[sgr0]%}"
PS1="%h(%?) $PR_BLUE%n@%m$PR_NO_COLOR:$PR_RED%~$PR_NO_COLOR%(!.#.$) "
RPS1="$PR_LIGHT_YELLOW(%D{%m-%d %H:%M})$PR_NO_COLOR"


# General Settings
PAGER='less'
EDITOR='vim'
#alias ls='ls --color=auto '
alias man='LC_ALL=C LANG=C man'
alias vpnon="sudo vpnc-connect Bazaar"
alias vpnoff="sudo vpnc-disconnect"
alias vims="vim --servername VS1"
alias vimr="vim --servername VS1 --remote "
alias vim="vim -p"

IDEA_JDK=/opt/jdk1.6.0_27
export MAVEN_OPTS="-Xmx1024M"
export UPDOWN_DIR=$HOME/repos/updown
export SCALABHA_DIR=$HOME/repos/scalabha
export LDMT_MURI_DIR=$HOME/repos/ldmt-muri
export MYSQL_HOME=/usr/local/mysql
#export FIASANA_DIR=$HOME/repos/fiasana
PATH=$PATH:$HOME/bin:$UPDOWN_DIR/bin:$SCALABHA_DIR/bin #:$FIASANA_DIR/bin
#PATH=$PATH:~/repos/node/build/default
export PATH=$PATH:$HOME/local/bin
export PATH=$PATH:/opt/mongo/bin
export PATH=$PATH:/usr/local/mysql/bin

echo "[32;40m"
echo "Welcome, John,

`fortune`" | cowsay -f eyes
