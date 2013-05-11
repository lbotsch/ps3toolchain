#!/bin/sh -e
# ps3libraries.sh by Dan Peori (dan.peori@oopo.net)

## Download the source code.
wget --no-check-certificate https://github.com/lbotsch/oscetool/tarball/master -O oscetool.tar.gz

## Unpack the source code.
rm -Rf oscetool && mkdir oscetool && tar --strip-components=1 --directory=oscetool -xvzf oscetool.tar.gz && cd oscetool

## Compile and install.
make
cp oscetool $PS3DEV/bin/
cp -r data $PS3DEV/
