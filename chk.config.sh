#!/bin/bash


RUSULT=`awesome -k 2>&1`
TARGET="mymsg.text ="
#echo "$TARGET \"$RUSULT\""

OK="✔ Configuration file syntax OK."
#echo "$RUSULT"
#echo "$OK"

if [ "$RUSULT" == "$OK" ]; then
	##echo "aoeu aoaoeaoeu"
	echo "mymsg.text = \"ok\"" | awesome-client
else
	echo "mymsg.text = \"fail\"" | awesome-client
fi
