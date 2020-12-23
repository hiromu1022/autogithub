#!/usr/bin/env bash

TODAY=`date +'%Y-%m-%d'`
DATE=`date -d "1 year ago" +'%Y-%m-%d'`

while true; do
  if [ "$TODAY" = "$DATE" ] ; then
    break
  fi
  DATE=$(date -d "$DATE 1day" "+%Y-%m-%d")
  echo $DATE
  git commit --allow-empty -m "COMMIT" --date=$DATE
done


