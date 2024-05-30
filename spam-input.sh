#!/bin/bash


number=$(cat booo | wc -l)
for ((n=1;n<=$number;n++));
do
	sed "${n}q;d" 'booo' | sed 's/$/.com/'
done > jfdhgfn.txt

