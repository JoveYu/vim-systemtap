#!/usr/bin/env sh

find . -not -path '*/\.*' -type dir -depth 1 -exec rm -rf {} +
git clone git://sourceware.org/git/systemtap.git
mv systemtap/vim/* .
git add *
git commit -m "sync to $(git --git-dir systemtap/.git rev-parse HEAD)"
git push origin master
rm -rf systemtap
