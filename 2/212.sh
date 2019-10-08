#!/bin/sh
# REV03 Wed Jan  3 20:23:16 WIB 2018
# REV02 Wed Aug 30 15:11:18 WIB 2017
# REV01 Fri Nov 18 18:11:33 WIB 2016
# START Tue Sep 20 16:27:45 WIB 2016

XX='xx'
for ii in `ls` ;
do
   echo $ii
   cd $ii
   git pull
   [ "$1" = "$XX" ] && {
      git add -A .
      git commit -m "$HOSTNAME: $ii"
      git push
   }
   cd ..
done
cd ..
rsync -acv --delete --exclude=.git git/os181/             /extra/os181/
rsync -acv --delete --exclude=.git git/os181/              $HOME/os181/
rsync -acv --delete git/rms46.vlsm.org/1/70.pdf           /extra/rms46/
rsync -acv --delete git/rms46.vlsm.org/1/94.pdf           /extra/rms46/
rsync -acv --delete git/rms46.vlsm.org/2/172.pdf          /extra/rms46/
rsync -acv --delete git/rms46.vlsm.org/2/183.pdf          /extra/rms46/
rsync -acv --delete git/rms46.vlsm.org/2/19[5-9].pdf      /extra/rms46/
rsync -acv --delete git/rms46.vlsm.org/2/20[0-5].pdf      /extra/rms46/

exit 0

