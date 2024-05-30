#!/usr/bin/env bash

echo "Please enter the link of the website which you wish to 
scrape(include http:// & https://): "

read targetwebsite

echo "What would you like to name the file containing the scraped 
websites of the target website:"

read filename

curl -s $targetwebsite | tr " " "\n" | tr ";" "\n"| grep -oE 'https://([^"#]+)|http://([^"#]+)|ftp://([^"#]+)|ssh://([^"#]+)' |sort -u >> $filename
