
ti-switch() {
	ti fin
	ti on "$@"
}

alias ton='ti on'
alias tif='ti fin'
alias tis='ti status'
alias tig='ti tag'
alias tisw='ti-switch'
alias tin='ti note'

tont() {
	ti on "$1"
	shift
	ti tag "$@"
}

tonn() {
	ti on "$1"
	shift
	ti note "$@"
}

