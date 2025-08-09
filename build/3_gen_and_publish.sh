#!/bin/bash

cd hexo
hexo g
ls -l
cd ..
git config --global user.name "Github Actions"
git config --global user.email "bot@github.com"
rm -rf docs/
mkdir docs
cp build/CNAME docs/CNAME
cp hexo/public/* docs/ -a
echo `date` > docs/workaround
git add .
git commit -m "auto gen by Github Actions"
git push
cd ..
