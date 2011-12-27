#!/bin/bash
source /etc/profile
source paths
export PATH=$PATH:$SCRIPTPATH
FILENAME="CM4D2G-NUKE-`date +%Y%m%d`.zip"
cd $REPOPATH
umount $REPOPATH/out
rm -Rf $REPOPATH/out
mkdir -p $REPOPATH/out
mount -t tmpfs -o size=6G tmpfs $REPOPATH/out
make clobber
repo sync -j32
export USE_CCHACHE=1
source build/envsetup.sh
export CYANOGEN_NIGHTLY=true
CYANOGEN_NIGHTLY=true && brunch droid2we
if [ -e $REPOPATH/out/target/product/droid2we/update-squished.zip ]
  then  
	echo "YAY MISSION ACCOMPLISHED!";
    echo "MOVING ZIP TO /home/$1/Desktop/$FILENAME";
    mv $REPOPATH/out/target/product/droid2we/update-squished.zip /home/$1/Desktop/$FILENAME;
    chown $1 /home/$1/Desktop/$FILENAME
  else
    echo "SOME SHIT BE FUKT!"
fi
umount $REPOPATH/out
rm -Rf $REPOPATH/out
