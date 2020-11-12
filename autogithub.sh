#!/usr/bin/env bash

for i in {1..365} ; do d=`LANG=C date -v-${i}d"+%a %b %d %H:%M:%S %Y -0900"`; git commit --allow-empty -m "YEAH" --date="$d"; done
