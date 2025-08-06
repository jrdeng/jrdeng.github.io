#!/bin/bash

cd template
hugo
ls -l
cd ..
git config --global user.name "Github Actions"
git config --global user.email "bot@github.com"
rm -rf docs/
mkdir docs
cp template/CNAME docs/CNAME
cp template/public/* docs/ -a
echo `date` > docs/workaround
git add .
git commit -m "auto gen by Github Actions"
git push
cd ..
