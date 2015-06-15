#!/bin/bash

#test YASM
YASM="yasm-1.2.0-win32"
YASM_TEST=`$YASM --version`

#DXVA2 option
DXVA2OPT=1
DXVA2STR=""

if [ $DXVA2OPT -eq 0 ]; then
	echo "DXVA2 disabled."
	DXVA2STR="--disable-dxva2"
else
	echo "DXVA2 enabeld."
fi

if [ -z "$YASM_TEST" ]; then
	echo "YASM not found."
	./configure --disable-yasm --disable-iconv $DXVA2STR
else
	echo "YASM found."
	./configure --disable-iconv --yasmexe=$YASM $DXVA2STR
fi
