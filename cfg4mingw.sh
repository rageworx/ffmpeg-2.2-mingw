#!/bin/bash

#test YASM
YASM="yasm-1.2.0-win32"
YASM_TEST=`$YASM --version`

if [ -z "$YASM_TEST" ]; then
echo "YASM not found."
./configure --disable-yasm --disable-iconv
else
echo "YASM found."
./configure --disable-iconv --yasmexe=$YASM
fi
