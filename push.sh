#!/bin/bash

cd "$(dirname "$0")"

git pull
git add .
git commit -m "a very legitimate commit"
git push
