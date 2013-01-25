#!/bin/bash

logfile="/var/log/importLogger/importLogger.log"
touch $logfile

touch timestamp --date="yesterday"
newfiles=$(find /var/import/automatic -newer timestamp -name *.wav | wc -l)
diskfree=$( df /var/snd | grep Rivendell | cut -d ' ' -f 3)
disktotal=$(df /var/snd | grep Rivendell | cut -d ' ' -f 2)

echo `date "+%Y-%m-%d"` $newfiles $diskfree $disktotal >> $logfile

