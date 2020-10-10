alias vim="nvim"
alias kds="find . -name .DS_Store -print -exec rm -f {} \;"
alias dnsflush="sudo killall -HUP mDNSResponder; sleep 2;"
alias dudirs="du -d 1 -h"
alias multitail='multitail -c'
alias chrobill="cd $HOME/machines/misc/chrobill && docker-compose up -d"
alias timestamp="date +%s"
alias repure="prompt_pure_async_init=0; async_stop_worker prompt_pure"
alias loadsys="cd $HOME/loadsys"
alias core="cd $HOME/machines/core"

function yarn() {
	nix-shell -p nodePackages.grunt-cli nodePackages.yarn --run "$(printf "%q " yarn $@)"
}
function grunt() {
	nix-shell -p nodePackages.grunt-cli nodePackages.yarn --run "$(printf "%q " grunt $@)"
}
