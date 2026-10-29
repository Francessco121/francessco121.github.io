#!/bin/bash
set -e

cd "$(dirname "$0")"
cd ..

# gotta commit ur stuff first
if [[ $(git status --porcelain) ]]; then
    echo "git has changes, commit everything first pls"
    exit 1
fi

# rebuild
rm -rf _site
npx @11ty/eleventy

# get dev commit hash
COMMITHASH=$(git rev-parse HEAD)

# init git repo
cd _site
git init -b master
git remote add origin https://github.com/Francessco121/shinx.dev.git
git fetch

# commit changes to master
git reset --mixed origin/master

git add .
git commit -m "Deploy from ${COMMITHASH}"

# send it
git push --set-upstream origin master
