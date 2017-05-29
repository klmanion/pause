#/usr/bin/env bash
#install.sh
#install pause and its manpage

if [ $(id -u) -ne 0 ]; then
	printf 'this script must be run as root\n' >&2
	exit 1;
fi

if [ ! -d "/usr/local/bin/" ]; then
	mkdir -p "/usr/local/bin/"
	[ $? -ne 0 ] && exit 1;
fi

chmod +x "./pause.sh"
cp "./pause.sh" "/usr/local/bin/pause"
cp "./pause.1" "/usr/share/man/man1/"
exit $?;

# vim: set ts=4 sw=4 noexpandtab:
