# paths
path+=(
  "/usr/local/sbin"
  "$HOME/machines/core/bin"
  "$HOME/bin"
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)

# env variables
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export FZF_DEFAULT_COMMAND='rg --files --hidden --glob \!.git'
export GIT_PAGER='less'

unset LSCOLORS

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# history search
bindkey "${terminfo[kcuu1]}" history-substring-search-up
bindkey "${terminfo[kcud1]}" history-substring-search-down

if [[ `uname` == "Darwin" ]]; then
  # broot
  source "$HOME/Library/Preferences/org.dystroy.broot/launcher/bash/br"
fi

# pure
# https://github.com/sindresorhus/pure#options
fpath+=("$HOME/.config/zsh-custom/themes/pure")
autoload -U promptinit; promptinit
PURE_CMD_MAX_EXEC_TIME=10
zstyle :prompt:pure:path color 030
prompt pure
