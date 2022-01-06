#!/bin/bash
file_location="$(find ~/Documents -maxdepth 1 -type f | head -n 1)"
bname="$(basename "$file_location")"
password="$(tr -dc A-Za-z0-9 </dev/urandom | head -c 20)"
echo $password > ~/Documents/Transmission/"$bname".dcr.key.txt
openssl aes-256-cbc -a -in "$file_location" -out ~/Documents/Encrypted/"$bname".enc -pass pass:$password
rm "$file_location"


#To decrypt: openssl aes-256-cbc -d -a -in in_file.enc -out outfile.dcr -pass pass:"$password"
