#!/bin/bash

echo "synchronizing using git"

cur_DATETIME=$(date +"%Y/%m/%d-%H:%M")

git add .
git commit -a -m "Auto commit on $cur_DATETIME"
git ls-files | grep '\.md$' > all.txt
git commit -a --amend --no-edit

git push --force
