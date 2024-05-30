#!/usr/bin/env bash


curl -s https://github.com/ignis-sec/Pwdb-Public/blob/master/wordlists/ignis-100K.txt | tr " " "\n" | tr '"' '\n' | tr "," "\n" | tr -s '\n'| grep -v "\n" | sed -n '/123456/,/gayguy/p' > cacom-output.txt
number=$(cat cacom-output.txt | wc -l)
#echo $number
for ((n=1;n<=$number;n++));
do 
        sed "${n}q;d" "cacom-output.txt" | sed 's/$/.ca/' 
        sed "${n}q;d" "cacom-output.txt" | sed 's/$/.com/' 
        sed "${n}q;d" "cacom-output.txt" | sed 's/$/.in/' 
        sed "${n}q;d" "cacom-output.txt" | sed 's/$/.uk/'
done | xargs cat
