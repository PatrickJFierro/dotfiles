export PATH=$PATH:/home/patrick/.gem/ruby/2.7.0/bin

export ZSH="/home/patrick/.oh-my-zsh"
export FZF_BASE="/home/patrick/.fzf/bin/fzf"
export TERM="xterm-256color"

alias lss="colorls -la --sd"

ZSH_THEME="agnoster"

plugins=(
    git
    colorize
    fzf
    z
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source ~/.zplug/init.zsh
zplug "andrewferrier/fzf-z"

source $ZSH/oh-my-zsh.sh
