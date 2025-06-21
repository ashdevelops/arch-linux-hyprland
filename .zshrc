export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="random"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias hypredit='nano /home/ash/.config/hypr/hyprland.conf'
alias copy='wl-copy'

gitacp() {
  if [ -z "$1" ]; then
    echo "Usage: gitacp \"commit message\""
    return 1
  fi
  git add .
  git commit -m "$1"
  git push
}
