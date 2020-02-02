#!/bin/bash
curl -k yoko.ukrtux.com:8899/versions.txt --output versions.txt 
sort versions.txt | sort -n
