#! /usr/bin/env sh

rm -f README.tmp.md

echo "idk's mostly active projects" | tee README.tmp.md
echo "============================" | tee -a README.tmp.md

cat desc | tee -a README.tmp.md

for repo in $(cat config.rc); do
    echo -n "* [$repo]" | sed 's|https://github.com/eyedeekay/||g' | tr '-' ' ' | tr '_' ' ' | tee -a README.tmp.md
    echo "($repo)" | tee -a README.tmp.md
done

edgar -script Github.bundle.min.js