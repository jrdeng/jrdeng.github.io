#!/bin/bash

cd hexo
npm i || exit -1
hexo g || exit -1
cp ../build/CNAME ./public/ || exit -1
cd ..
