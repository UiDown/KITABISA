#!/bin/bash

### Colors ###
lightgreen='\e[1;32m'
red='\e[1;31m'
reset='\e[0m'

### Function Tools ###
if [ -z "$1" ]; then
        echo -e $red"["$lightgreen"+"$red"]"$reset"http://uidown.blogspot.com"
        echo -e $red"["$lightgreen"+"$red"]"$reset"Usage Spam SMS "
        echo -e $red"["$lightgreen"+"$red"]"$reset"Use: $red$0 <No Tujuan>"$reset
        exit 0
fi

curl -sX GET https://core.ktbs.io/v2/user/registration/otp/$1
clear
