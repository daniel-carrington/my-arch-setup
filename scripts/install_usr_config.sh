#!/bin/bash

usage () {
    echo "Usage: ./scripts/install_usr_config.sh <USRNAME>"
}

USRNAME="$1"

if [ -n "$USRNAME" ]
then
    :
else
    usage
    exit 1
fi

if [[ "$USRNAME" =~ ^- ]]
then
    echo "No arguments are accepted to this script."
    usage
    exit 1
fi

for file in $(find ./home/user/ -type f) ;
do
    cp "$file" "${file/user/"$USRNAME"}"
done

