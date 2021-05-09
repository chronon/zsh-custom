# defaults/options: .oh-my-zsh/templates/zshrc.zsh-template

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
ZSH_CUSTOM="$HOME/.config/zsh-custom"

plugins=(history-substring-search fzf)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
