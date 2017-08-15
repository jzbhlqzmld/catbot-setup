#!/usr/bin/env bash

pushd `dirname $0`

if ! [ $EUID == 0 ]; then
	echo "This script must be run as root"
	exit
fi

proc=$1

echo "Blocking dumps"

rm -rf /tmp/dumps # Remove if it exists
mkdir /tmp/dumps # Make it as root
chmod 000 /tmp/dumps # No permissions

FILENAME=$(realpath cathook/libcathook.so)	

echo loading "$FILENAME" to "$proc"

#killall -19 steam
#killall -19 steamwebhelper
#killall -19 gameoverlayui

gdb -n -q -batch \
  -ex "attach $proc" \
  -ex "set \$dlopen = (void*(*)(char*, int)) dlopen" \
  -ex "call \$dlopen(\"$FILENAME\", 1)" \
  -ex "call dlerror()" \
  -ex 'print (char *) $2' \
  -ex "detach" \
  -ex "quit" >/tmp/cathook-backtraces/$proc.log
  
rm $FILENAME

#killall -18 steamwebhelper
#killall -18 gameoverlayui
#killall -18 steam

popd