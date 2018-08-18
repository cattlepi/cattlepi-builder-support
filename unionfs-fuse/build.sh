#!/bin/bash
# master build script
SELFDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export TOPDIR=$SELFDIR
sudo apt-get install  libfuse-dev
cd $TOPDIR/cache/unionfs-fuse && make
cd $TOPDIR/cache/unionfs-fuse && sudo make install
