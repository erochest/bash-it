
function svim() {
	ACCUM="vim"

	if [ "$1" == "-gui" ]; then
		ACCUM="mvim"
		shift
	fi

	if [ -f Session.vim ]; then
		ACCUM="$ACCUM -S Session.vim"
	else
		ACCUM="$ACCUM +Obsession"
	fi

	if [ -f .project.vim ]; then
		ACCUM="$ACCUM -S .project.vim"
	fi

	ACCUM="$ACCUM $@"
	$ACCUM
}

