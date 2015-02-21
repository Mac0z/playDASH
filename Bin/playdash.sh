#!/bin/sh
scriptpid=$$
apppid=/tmp/.playvlc-app.$$.pid
app=/Applications/VLC.app/Contents/MacOS/VLC

echo Streaming: Launching $app "$@" >&2
(
    "$app" "$@"  &

    echo $! > $apppid
    wait
    rm -f $apppid
    kill $scriptpid 2> /dev/null
) < /dev/null &

cat > /dev/null
if [ -s $apppid ] ; then
    kill `cat $apppid` 2> /dev/null
fi
