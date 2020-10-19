#!/bin/sh

export LOG=/var/log/nodejs/nexjs
export PID=$LOG/forever.pid
export UID_TAG=nexjs
export DOCSIFY=/usr/bin/docsify
export NEXJS=/opt/app/nexjs

forever start -l $LOG/access.log -o $LOG/out.log -e $LOG/err.log -a --uid $UID_TAG  --pidFile $PID $DOCSIFY start $NEXJS