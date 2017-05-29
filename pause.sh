#!/usr/bin/env bash

#pause
#program to temporarily pause or resume a running process
#created by: Kurt L. Manion
#on: 27 May 2016
#last edited: 29 May 2017
#verison 1.1.3

err() { printf 'Err: %s\n' "$1" >&2; exit 1; }

#send sig to processes
#find out if process is paused
#T marks a stoppen process
(($# == 0)) && err 'no argument supplied'
while [ $# != 0 ]
do
    if [[ x"`ps -Ac -opid,command,state | grep -i -m1 -e "$1" \
	    | awk '{print $3;}'`" == x"T" ]]; then
        SIG="CONT"
    else
        SIG="STOP"
    fi
    pkill -"$SIG" -i "$1"
    printf '%s\n' "`ps -Ac -opid,ppid,command,state | grep -i -e "$1"`"
    shift;
done
exit 0;
