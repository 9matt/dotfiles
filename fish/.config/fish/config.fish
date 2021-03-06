#   __ _     _              
#  / _(_)___| |__  _ __ ___ 
# | |_| / __| '_ \| '__/ __|
# |  _| \__ \ | | | | | (__ 
# |_| |_|___/_| |_|_|  \___|
                 
# Variables
set fish_greeting
set terminal "alacritty"
set TERM "xterm-256color"
set editor "nvim"
set reader "zathura"
set browser "librewolf"

# Aliases
alias vim=nvim
alias ls=exa
alias ll='exa -l'
alias la='exa -a'
alias gs='git status'
alias nf=neofetch
alias stow='stow -t ~'

# Shortcut aliases
alias ..='cd ..'
alias fishrc='$editor ~/.config/fish/config.fish'
alias nvimrc='$editor ~/.config/nvim/init.vim'
alias alacritty.yml='$editor ~/.config/alacritty/alacritty.yml'

# Random shell color script on startup


# Initialize the Starship shell prompt
starship init fish | source
