dc='docker-compose'
localdata='-f docker-compose.yml -f docker-compose.localdata.yml'

alias dcup="${dc} up -d"
alias dcupl="${dc} ${localdata} up -d"
alias dcex="${dc} exec"
alias dcdown="${dc} down"

function dctest2() {
	local container="$1"
	shift 1
	${dc} exec "$container" Console/cake test app "$@"
}

function dctest3() {
	local container="$1"
	shift 1
	${dc} exec "$container" bin/phpunit "$@"
}

function dcmach() {
	local stack="$1"
	shift 1
	${dc} -f compose-${stack}.yml "$@"
}
