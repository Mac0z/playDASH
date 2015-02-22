#!/bin/sh
scriptpid=$$
apppid=/tmp/.playvlc-app.$$.pid
app=/Applications/VLC.app/Contents/MacOS/VLC

echo Streaming: Launching $app "$@" >&2
"$app" "$@"  &
wait $!
