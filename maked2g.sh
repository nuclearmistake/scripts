#!/bin/bash
source paths
START=`date +%s`
NAME=`id -un`
sudo $SCRIPTPATH/_maked2g.sh $NAME
END=`date +%s`
DIFF=$(($END-$START))
echo "Build took $DIFF seconds"
