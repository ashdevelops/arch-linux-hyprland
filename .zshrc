export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="random"

export AHG="/mnt/storage/arch-linux-hyprland"
plugins=(git)

source $ZSH/oh-my-zsh.sh

vim() {
  command nvim "$@"
}

alias hypredit='nvim /home/ash/.config/hypr/hyprland.conf'
alias copy='wl-copy'
alias yay='yay --noconfirm'

gacp() {
  if [ -z "$1" ]; then
    echo "Usage: gitacp \"commit message\""
    return 1
  fi
  git add .
  git commit -m "$1"
  git push
}

subl() {
  command subl -n "$@"
}

nano() {
  command nvim -n "$@"
}

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
