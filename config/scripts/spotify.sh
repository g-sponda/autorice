#!/usr/bin/bash

# Check if spotify is running
if pgrep "spotify" > /dev/null
then
    echo "    $(dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata'|egrep -A 1 "title"|egrep -v "title"|cut -b 44-|cut -d '"' -f 1|egrep -v ^$)   "
else

	if pgrep "cmus" > /dev/null
	then
		echo "    $(cmus-remote -Q 2>/dev/null | grep title | cut -d " " -f 3-)   "
	else
		echo "​"
	fi

fi
