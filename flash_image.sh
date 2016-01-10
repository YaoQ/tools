#!/bin/sh

echo "Flash image to disk"

if [ $# -ne 2 ]; then
	echo "Usage $0 src dst "
	return
fi

SRC=$1
DST=$2

sudo dd if=$SRC of=$DST bs=1M
