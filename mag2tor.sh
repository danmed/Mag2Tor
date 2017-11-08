#!/bin/bash

File="$(find /mnt/downloads/TORRENTS/BLACKHOLE -name '*.magnet' -print -quit)"

set -- $File

Filecontents="$(cat "$File")"

set -- $Filecontents

cd /mnt/downloads/TORRENTS/BLACKHOLE
[[ "$Filecontents" =~ xt=urn:btih:([^&/]+) ]] || exit;
echo "d10:magnet-uri${#1}:${1}e" > "meta-${BASH_REMATCH[1]}.torrent"

rm "$File"
