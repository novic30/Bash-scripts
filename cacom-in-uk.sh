#!/usr/bin/env bash

curl -s https://github.com/ignis-sec/Pwdb-Public/blob/master/wordlists/ignis-100K.txt | tr " " "\n" | tr '"' '\n' | tr "," "\n" | tr -s '\n'| grep -v "\n" | grep -o '123456'| sort -u | uniq > cacom-output.txt
number=$(cat cacom-output.txt | wc -l)
for n in 1
do 
        sed "${n}q;d" "cacom-output.txt" | sed 's/$/.ca/' 
        sed "${n}q;d" "cacom-output.txt" | sed 's/$/.com/' 
        sed "${n}q;d" "cacom-output.txt" | sed 's/$/.in/' 
        sed "${n}q;d" "cacom-output.txt" | sed 's/$/.uk/'
done | xargs -I{} open "http://{}" && xargs -I{} open "https://{}"
