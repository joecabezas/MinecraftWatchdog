#!/bin/bash
DEFAULT_TITLE="Minecraft"

##############################
#DO NOT EDIT AFTER THIS POINT
##############################

while getopts "f:p:" opt; do
	case $opt in
		f)
			LOGFILE="$OPTARG"
			;;
		p)
			PUSHOVERFILE="$OPTARG"
			;;
	esac
done

#DEFAULTS
if [ -z "$LOGFILE" ]; then LOGFILE="server.log"; fi
if [ -z "$PUSHOVERFILE" ]; then PUSHOVERFILE="pushover.sh"; fi

function main
{
	tail -Fn0 "$LOGFILE" | \
	#cat "$LOGFILE" | \
	while read line ; do
		
		#echo "-----------"
		#echo "$line"
		#echo "+++++++++++"

		#CHECK IF USER CONNECTED
		USER_CONNECTED=$(CheckUserConnected "$line")
		if [ -n "$USER_CONNECTED" ]; then UserConnectedAction "$USER_CONNECTED"; fi

	done
}

function CheckUserConnected
{
	echo "$1" | \
	awk '/logged in with entity id/ {print $0;}' | \
	sed 's/.*: \(.*\)\[.*\] logged in with entity.*/\1/'
}

function UserConnectedAction
{
	MESSAGE="[$1] connected!"
	./$PUSHOVERFILE -t "$DEFAULT_TITLE" -m "$MESSAGE" -p 0
}

#MAIN EXCECUTION
main