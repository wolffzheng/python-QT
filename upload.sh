#!/bin/bash
#/bin/bash/expect -f
git branch tmp
git checkout tmp
git add . --all
#echo "please input commit message:"
#read message
temp_date=$(date)
git commit -m "add books on $temp_date"
git checkout master
git merge tmp
spawn git push origin master
expect "*https://github.com*"
send "wolffzheng\r"
expect "*wolffzheng@github.com*"
send "Wolff8341\r"
expect eof
git branch -d tmp

