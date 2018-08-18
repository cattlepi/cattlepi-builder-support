#!/bin/bash
# master build script
SELFDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export TOPDIR=$SELFDIR

export REPO="git@github.com:rpodgorny/unionfs-fuse.git"
export TAG="24b46b68e78c5612cc33a57cbd95f899ab6e3e53"

rm -rf $TOPDIR/cache
mkdir -p $TOPDIR/cache
cd $TOPDIR/cache && git clone $REPO
cd $TOPDIR/cache/unionfs-fuse && git reset --hard $TAG
rm -rf $TOPDIR/cache/unionfs-fuse/.git