# If not running interactively, don't do anything 
[[ $- != *i* ]] && return 

stty -ixon # Disables ctrl-s and ctrl-q (Used To Pause Term) 

if command -v eza >/dev/null 2>&1; then
    alias l='eza -ll --color=always --group-directories-first'
    alias ls='eza -al --header --icons --group-directories-first'
elif command -v exa >/dev/null 2>&1; then
    alias l='exa -ll --color=always --group-directories-first'
    alias ls='exa -al --header --icons --group-directories-first'
fi

# Dunst
alias hi='pgrep -x dunst >/dev/null && notify-send "Hi there!" "Welcome to bspwm! " -i ""'

# Add Color
alias egrep='grep --color=auto'

export PATH="$HOME/scripts:$HOME/.local/bin:/usr/local/go/bin:$PATH"
export EDITOR=$(command -v nvim || command -v micro || echo nano)
export VISUAL="$EDITOR"

# PS1 Customization
#PS1="\[\e[32m\]\h\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[34m\]\u\[\e[m\] \W \$ " 
# Colour codes
RED="\\[\\e[1;31m\\]"
GREEN="\\[\\e[1;32m\\]"
YELLOW="\\[\\e[1;33m\\]"
BLUE="\\[\\e[1;34m\\]"
MAGENTA="\\[\\e[1;35m\\]"
CYAN="\\[\\e[1;36m\\]"
WHITE="\\[\\e[1;37m\\]"
ENDC="\\[\\e[0m\\]"

# Color for manpages in less makes manpages a little easier to read
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# nala
alias upd='sudo nala update'
alias upg='sudo nala upgrade'
alias install='sudo nala install'
alias remove='sudo nala remove'
alias s='nala search'
alias sh='nala show'

# apt
#alias upd='sudo apt update && apt list --upgradable'
#alias upg='sudo apt upgrade'
#alias install='sudo apt install'
#alias remove='sudo apt remove'
#alias s='apt search'
#alias sh='apt show'

# flatpak
alias updf='flatpak update'

# ADBSync
alias adbsync='adbsync --del --show-progress pull /storage/emulated/0/ko ~/kolt_android/ko_p8_bu/'

# misc
alias ..='cd ..' 
alias ...='cd ../..' 
alias df='df -h'
alias free='free -h'
alias myip="hostname -I | awk '{print $1}'; curl -s ifconfig.me && echo ' external ip'"
alias x="exit"

# Set a two-line prompt. If accessing via ssh include 'ssh-session' message.
if [[ -n "$SSH_CLIENT" ]]; then ssh_message="-ssh_session"; fi
PS1="${MAGENTA}\t ${GREEN}\u ${WHITE}at ${YELLOW}\h${RED}${ssh_message} ${WHITE}in ${BLUE}\w \n${CYAN}\$${ENDC} "
