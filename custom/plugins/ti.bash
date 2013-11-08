
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

alias dailyreview='tont "daily review" gtd email'

ti-plugin() {
	echo "function ti-switch (ti fin + ti on)"
	echo "function tont      (ti on  + ti tag)"
	echo "function tonn      (ti on  + ti note)"
	echo "ton  = ti on"
	echo "tif  = ti fin"
	echo "tis  = ti status"
	echo "tig  = ti tag"
	echo "tisw = ti-switch"
	echo "tin  = ti note"
	echo "dailyreview"
}

