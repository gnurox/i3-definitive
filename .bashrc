#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='lsd --color=auto'
alias grep='grep --color=auto'
alias p='sudo pacman'
alias s='source ~/.bashrc && source ~/.bash_profile'
alias config='vim ~/.config/i3/config'
alias vencord='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'
alias shn='shutdown now'
alias trace='redive'
alias key='sudo pacman -Sy archlinux-keyring --noconfirm'
alias up='key && p -Syyu'
#PS1='[\u@\h \W]\$ '

PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null); if [ -n "$PS1_CMD1" ]; then PS1_CMD1=" : $PS1_CMD1"; fi';
PS1='\[\e[38;5;72m\][\[\e[38;5;46;1m\]\u\[\e[0;38;5;72m\]][\[\e[38;5;28m\]\H\[\e[38;5;72m\]][\[\e[38;5;28m\]\w\[\e[0m\]\[\e[38;5;25m\]${PS1_CMD1}\[\e[38;5;72m\]]\n\\$\[\e[0m\] '
. "$HOME/.cargo/env"
