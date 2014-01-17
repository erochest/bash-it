
if [ -e /usr/libexec/java_home ]; then
	JAVA_HOME=`/usr/libexec/java_home -v 1.7.0`
elif [ -d /usr/lib/jvm/jre-1.6.0 ]; then
	JAVA_HOME=/usr/lib/jvm/jre-1.6.0
else
	JAVA_HOME=
fi
export JAVA_HOME

find-in-jar() {
	target=$1
	shift
	for jar in "$@"; do
		echo $jar
		jar tf $jar | grep "$target"
		echo
	done
}

