export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="random"

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=50000

setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY

plugins=(git)

source $ZSH/oh-my-zsh.sh

export STORAGE="/mnt/storage"
export CFG="/home/ash/.config"
export MEDIA="/mnt/media"
