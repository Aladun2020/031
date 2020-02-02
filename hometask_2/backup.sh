#!/bin/bash
 SRCDIR="/home/alex/Documents/"
 DESTDIR="/home/alex/Backups/"
 FILENAME=backup_dir-$(date +%-Y%-m%-d).tgz
 tar --create --gzip --file=$DESTDIR$FILENAME $SRCDIR
 find $DESTDIR/* -mtime +1 -exec rm {} \;
