#!/usr/bin/env sh

set -e

git add -A
git commit -m 'Update docs.'
git push -u origin master

npm run docs:build
cd docs/.vuepress/dist
echo 'yaomiao.wang' > CNAME
git init
git add -A
git commit -m 'Deploy site.'
git push -f git@github.com:rulai-ymwang/blog.git gh-pages
cd -
