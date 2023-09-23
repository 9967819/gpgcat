#!/bin/bash
# Note to self: A secure cat is a gpg enabled cat ;)
# Usage:
# passwords=/home/bob/etc/file.gpg
# export PRIVATE_KEYRING=$passwords
# gpgcat.sh mimi... 
if [ ! -z $PRIVATE_KEYRING ];
then
	#set -x 
	/usr/bin/gpg -d $PRIVATE_KEYRING | grep $1
else
	echo "Please set the PRIVATE_KEYRING variable in your env."
	exit 1
fi;
exit 0
