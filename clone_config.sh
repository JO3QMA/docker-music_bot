#!/bin/sh
cd ./data/
git init
git config core.sparsecheckout true
git remote add origin https://github.com/Just-Some-Bots/MusicBot.git
echo "config" > .git/info/sparse-checkout
git pull origin master 