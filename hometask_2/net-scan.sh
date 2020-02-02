#!/bin/bash
for ip in {0..255}.{0..255}.{0..255}.{0..255}
do        
        timeout 1 bash -c "</dev/tcp/$ip/80 &>/dev/null" &&  echo "port $ip 80 is open"
        timeout 1 bash -c "</dev/tcp/$ip/443 &>/dev/null" &&  echo "port $ip 443 is open" 
done


