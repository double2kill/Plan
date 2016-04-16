#!/bin/bash

option="${1}"
case ${option} in
	-f) FILENAME=${2}
	    echo "file name is $FILENAME"
	    ;;
	-d) DIRNAME=${2}
	    echo "Dir name is $DIRNAME"
	    ;;
	*) 
	    echo "${0}: usage: [-f filename] | [-d directory] "
	    exit 1 # Command to come out of the program with status 1
	    ;;
esac
