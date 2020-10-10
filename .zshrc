# defaults/options: .oh-my-zsh/templates/zshrc.zsh-template

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
ZSH_CUSTOM="$HOME/.config/zsh-custom"

plugins=(history-substring-search fzf)

source $ZSH/oh-my-zsh.sh

if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then . $HOME/.nix-profile/etc/profile.d/nix.sh; fi
