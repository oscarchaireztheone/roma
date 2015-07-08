#!/bin/sh

echo "\nCopying...\n"

cd ~/Code/GitHub/

rm -rf roma/*

cp -r ~/Code/rails/roma/ ~/Code/GitHub/roma/

cd ~/Code/GitHub/roma

echo "Committing...\n"

git add -A

git commit -m "$1"

git push

echo "\n"
