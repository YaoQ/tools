#!/bin/sh

echo "fdisk -l image-file to get offset of partitions"
echo "Mount image..."

if [ $# -ne 3 ]; then
	echo "Usage $0 offset image-file mount-point"
	return
fi

OFFSET_SIZE=$(($1 * 512 ))

IMG=$2

sudo mount -v -o offset=$OFFSET_SIZE -t auto $IMG $3
