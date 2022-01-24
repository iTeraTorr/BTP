#!/bin/sh
echo "Runnung de-install...";

for file in ./enc/*
do
    echo "picking... " $file;
    newfile=`echo "$file" | cut -d "/" -f3`;
    passw="ruchir";
    openssl enc -iter 1 -aes-256-cbc -in $file -out "./bin/${newfile}" -d -pass pass:$passw;
    #echo "${newfile}@${passw}" >> ./decr/keys.txt;
    #rm $file;
done

