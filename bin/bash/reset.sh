#!/bin/sh

# for mac only

cd ~/Code/GitHub/roma/

echo "\nUpdating...\n"

git fetch --all

git reset --hard origin/master

echo "\nCopying...\n"

cp -r ~/Code/GitHub/roma/ ~/Code/rails/roma/

cd ~/Code/rails/roma/

rm -rf .git && rm -rf .gitignore