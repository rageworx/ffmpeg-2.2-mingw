#!/bin/bash

#test YASM
YASM="vsyasm"
YASM_TEST=`vsyasm --version`

if [ -z "$YASM_TEST" ]; then
echo "YASM not found."
./configure --disable-yasm --disable-iconv
else
echo "YASM found."
./configure --disable-iconv --yasmexe=$YASM
fi
