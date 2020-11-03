#!/bin/bash

# KJSL: script to build FFmpeg on OSX with debug symbols

# build FFmpeg 4 (with AV1)
 PKG_CONFIG_PATH="/usr/local/lib/pkgconfig" ./configure  --prefix=/usr/local --enable-gpl --enable-nonfree \
 --enable-libass --enable-libfdk-aac --enable-libfreetype \
 --enable-libopus --enable-libtheora --enable-libvorbis \
 --enable-libopenjpeg --enable-avfilter \
 --enable-libvpx --enable-libx264 --enable-libx265 --enable-libxvid --enable-ffplay --enable-sdl2 \
 --enable-libmp3lame \
 --enable-libsrt --enable-librtmp \
 --disable-optimizations \
 --enable-debug \
 --disable-stripping \
 --extra-ldflags="-L/usr/local/Cellar/lame/3.99.5/lib \
 -L/usr/local/Cellar/libogg/1.3.2/lib \
 -L/usr/local/Cellar/theora/1.1.1/lib \
 -L/usr/local/Cellar/libvorbis/1.3.5/lib \
 -L/usr/local/Cellar/xvid/1.3.4/lib \
 -I/usr/local/Cellar/openssl/1.0.2p/lib \
 -L/usr/lib" \
 --extra-cflags="-I/usr/local/Cellar/lame/3.99.5/include \
 -I/usr/local/Cellar/libogg/1.3.2/include \
 -I/usr/local/Cellar/theora/1.1.1/include \
 -I/usr/local/Cellar/libvorbis/1.3.5/include \
 -I/usr/local/Cellar/xvid/1.3.4/include \
 -I/usr/local/Cellar/sdl/1.2.15/include \
 -I/usr/local/Cellar/openssl/1.0.2p/include \
 -I/usr/include -MTd"
make -j5
sudo make install
