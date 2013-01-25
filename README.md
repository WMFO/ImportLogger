Import Logger
========
WMFO - Tufts Freeform Radio  
ops@wmfo.org  
For copyrights and licensing, see COPYING.

A simple script to log the number of files imported in the last 24 hours
and the space remaining in the data store partition. While this script is
customized to WMFO's setup, a small amount of modification can repurpose it
for tracking additions to any large data store.

Log file format:  
`yyyy-mm-dd n m U T`  
where  
 * `yyyy-mm-dd` is the date
 * `n` is the number of .wav files in the auto import directory newer than 24 hours
 * `m` is the number of CDs represented among those files
 * `U` is the amount of space in use in the file store
 * `T` is the total amount of space (will be the same every entry)

A crontab entry ensures that the import logger is run just before the files are imported into Rivendell.

Changelog
---------
###1/25/13
Initial version. Hours later: add CD count. - Max Goldstein
