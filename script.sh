#!/bin/sh

echo $STREAM

command="ffmpeg -listen 1 -i rtmp://0.0.0.0:1935/live/app -preset ultrafast -c:v libx264 -tune zerolatency -f flv - | ffmpeg -f flv -i - "
loop=""

for stream in $STREAM; do
    loop=$loop" -c copy -f flv "$stream" "
done

fullcommand=$command$loop
echo $fullcommand
sh -c "$fullcommand"