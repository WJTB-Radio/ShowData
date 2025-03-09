#!/bin/bash

cd "$(dirname "$0")"

# flatten history
git checkout --orphan flattened
git add .
git commit -m "update data"
git push origin +flattened:master

git fetch
git checkout master
git branch -D flattened

git prune

