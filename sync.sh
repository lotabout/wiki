#!/bin/bash

echo "synchronizing using git"

cur_DATETIME=$(date +"%Y/%m/%d-%H:%M")

git ls-files | grep '\.md$' > all.txt
git add .
git commit -a -m "Auto commit on $cur_DATETIME"

git push --force
