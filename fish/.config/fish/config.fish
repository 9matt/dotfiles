#   __ _     _              
#  / _(_)___| |__  _ __ ___ 
# | |_| / __| '_ \| '__/ __|
# |  _| \__ \ | | | | | (__ 
# |_| |_|___/_| |_|_|  \___|
                 
set fish_greeting
set terminal "alacritty"
set TERM "xterm-256color"
set editor "nvim"
set reader "zathura"
set browser "librewolf"

# Aliases
alias vim=nvim
alias ls=exa
alias list='exa -l'
alias la='exa -a'
alias gs='git status'
alias fishrc='$editor ~/.config/fish/config.fish'
alias nvimrc='$editor ~/.config/nvim/init.vim'
alias ..='cd ..'
alias nf=neofetch

colorscript -r 
starship init fish | source
