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
alias ap='sudo intel-undervolt read && sudo intel-undervolt apply'
alias guwno='shn'

export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3

PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\[\e[38;5;108m\]\u\[\e[0m\] at \[\e[38;5;32m\]\w\[\e[0m\] \[\e[38;5;100m\]${PS1_CMD1}\n\[\e[38;5;108m\]\\$\[\e[0m\] '
. "$HOME/.cargo/env"
