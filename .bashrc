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
alias key='sudo pacman -Sy archlinux-keyring --noconfirm'
alias up='key && p -Syyu'
alias synctime='sudo timedatectl set-ntp true'

PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\[\e[38;5;108m\]\u\[\e[0m\] at \[\e[38;5;32m\]\w\[\e[0m\] \[\e[38;5;100m\]${PS1_CMD1}\n\[\e[38;5;108m\]\\$\[\e[0m\] '

export QT_QPA_PLATFORMTHEME=qt5ct
