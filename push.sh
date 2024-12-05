#!/bin/bash

cd "$(dirname "$0")"

git pull

# flatten history
git checkout --orphan flattened
git add .
git commit -m "update data"
git diff original_branch..flattened
git push origin +flattened:master
git prune

