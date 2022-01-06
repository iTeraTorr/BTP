#!/bin/sh
echo "Runnung install...";

echo "" > ./decr/keys.txt; 

for file in ./bin/*
do
    if [ -f "${file}" ]; then # if its a file (not directory)
    echo "picking... " $file;
    newfile=`echo "$file" | cut -d "/" -f3`;
    passw=$(uuidgen);
    openssl enc -iter 1 -aes-256-cbc -in $file -out "./enc/${newfile}.enc" -pass pass:$passw;
    echo "${newfile}@${passw}" >> ./decr/keys.txt;
    rm $file;
    fi
done

