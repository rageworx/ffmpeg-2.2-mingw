# ffmpeg-2.2-mingw #
A modified FFmpeg 2.2(-git) library for MinGW-W64.

## About this: ##
- Modified original ffmpeg-2.2 building scripts and source from URL of "http://ffmpeg.org/releases/".
- Added and modified some scripts to building in minGW-W64 with M-Sys.

## Requirements ##
- You need M-Sys to build this library. Make sure you've been installed M-Sys with using MinGW-W64 (other version may has no problem to build).
- yasm-1.2.0-win32 for compile assembler for optimization of SIMD instructions.<br>You should be download here, http://yasm.tortall.net/releases/Release1.2.0.html <br>And recommend extract yasm-1.2.0-win32 into directory of M-Sys binary.

## Excluded in configuring ##
- iconv has excluded.
- If you want to include "libconv" to ffmpeg, please modify 'cfg4mingw.sh' file as like remove "--disable-iconv".

## How to configure ? ##
- Move to base directory of ffmpeg-mingw.
- Check permission of "cfg4mingw.sh". if it doesn't has executive permission, please give it for using "chmod 755(or 777) cfg4mingw.sh".
- Execute "cfg4mingw.sh" instead directly using "configure", then "make" to build all.




