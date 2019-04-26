#!/usr/bin/env sh



git add -A
git commit -m 'Update docs.'
git push -u origin master

set -e
npm run docs:build
cd docs/.vuepress/dist
git init
git add -A
git commit -m 'Deploy site.'
git push -f git@github.com:rulai-ymwang/blog.git gh-pages
cd -
