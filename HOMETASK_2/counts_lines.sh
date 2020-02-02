#!/bin/bash
curl yoko.ukrtux.com:8899/versions.txt --output versions.txt
sort versions.txt | uniq -c | sort -nr | head -1

