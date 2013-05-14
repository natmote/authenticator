#!/bin/bash

# usage generate.sh HEXKEY
#
# requires oathtool installed
PAD='============================='
PADLENGTH=32
INKEY=$(echo "$*" | sed 's/ //g')

if [ ${#INKEY} -gt 16 ]
then
  if [ ${#INKEY} -lt 32 ]
  then
    INKEY=$(printf  "%s%*.*s\n" "$INKEY" 0 $(($PADLENGTH - ${#INKEY})) "$PAD")
  fi
fi
HEXKEY=$(oathtool --verbose --totp --base32 "${INKEY}" | grep 'Hex secret' | cut -b 13-)
echo ${HEXKEY}  | sed -e 's/\(..\)/\1, 0x/g' -e 's/, 0x$/ },/' -e 's/^/{ 0x/'

