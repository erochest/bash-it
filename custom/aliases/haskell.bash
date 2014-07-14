
alias cb='cabal'
alias cbi='cabal install'
alias cbu='cabal update'
alias cbx='cabal clean'
alias cbc='cabal configure'
alias cbd='cabal configure -fdevelopment --enable-tests'
alias cbb='cabal build'
alias cbt='cabal test'

alias yi='yesod init'
alias yc='yesod configure'
alias yd='yesod devel'

function ls-haddock() {
	pkg="$1"
	find .cabal-sandbox -name index.html | grep "$pkg"
}

function open-haddock() {
	pkg="$1"
	haddock_dir=$(cabal sandbox hc-pkg field $pkg haddock-html | sed -e 's/haddock-html: //')
	open "$haddock_dir/index.html"
}

