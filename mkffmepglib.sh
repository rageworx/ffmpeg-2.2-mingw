#!/bin/bash
CURPATH=${PWD}
AR=ar
OUT=libffmpeg.a
PLATFORM=x86

if [ -e $OUT ]; then
	rm -rf $OUT
fi

echo "Generating pre-compile objects to [$OUT]..."
${AR} -q $OUT libavutil/*.o
${AR} -q $OUT libavutil/${PLATFORM}/*.o
${AR} -q $OUT libavfilter/*.o
${AR} -q $OUT libavfilter/${PLATFORM}/*.o
${AR} -q $OUT libswscale/*.o
${AR} -q $OUT libswscale/${PLATFORM}/*.o
${AR} -q $OUT libavformat/*.o
${AR} -q $OUT libavcodec/*.o
${AR} -q $OUT libavcodec/${PLATFORM}/*.o
${AR} -q $OUT libavdevice/*.o
# -- ${AR} -q $OUT libavresample/*.o
# -- ${AR} -q $OUT libavresample/${PLATFORM}/*.o
${AR} -q $OUT libswresample/*.o
${AR} -q $OUT libswresample/${PLATFORM}/*.o

echo $OUT generating done.