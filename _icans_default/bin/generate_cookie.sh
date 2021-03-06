#!/bin/sh
NUM_CHARS=120
FILENAME='.cookie'
CHARSET='a-zA-Z0-9-_!@#$%^&*()_+{}|:<>?='
while getopts f:c:n: OPTION
do
	case $OPTION in
		f)
			FILENAME="$OPTARG"
			;;
		n)
			NUM_CHARS="$OPTARG"
			;;
		c)
			CHARSET="$OPTARG"
			;;
	esac
done

cat /dev/urandom | tr -dc $CHARSET | head -c $NUM_CHARS > $FILENAME
