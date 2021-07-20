
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell_with_host"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias t="bin/rails test"

eval `dircolors ~/.dircolors`
