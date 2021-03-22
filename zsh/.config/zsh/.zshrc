#          _              
#  _______| |__  _ __ ___ 
# |_  / __| '_ \| '__/ __|
#  / /\__ \ | | | | | (__ 
# /___|___/_| |_|_|  \___|

# Sets
setopt autocd
stty stop undef	
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history
export KEYTIMEOUT=1

# Setting locales to fix artifacts
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Default programs and .local/bin
export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"
export EDITOR="nvim"
export BROWSER="librewolf"
export READER="zathura"

# Source aliases
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/aliasrc"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.


# Load the Starship prompt, autosuggestions and syntax highlighting
eval "$(starship init zsh)"
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh || echo "install zsh autosuggestions"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh || echo "install zsh syntax highlighting"
