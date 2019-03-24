#!/bin/sh
HOMEDIR="/home/nyomoko"
BACKUPDIR=".pit .ssh .nyah"

TEMPLIST=""

for line in $BACKUPDIR
do
echo $line
[ -d ${HOMEDIR}/${line} ] && TEMPLIST="$TEMPLIST ${line}/"
done

echo $TEMPLIST
FILENAME=${HOMEDIR}/BACKUP$(date +"%Y-%m-%d").tgz
cd $HOMEDIR
tar cvzf $FILENAME $TEMPLIST
