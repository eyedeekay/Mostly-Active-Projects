#! /usr/bin/env sh

rm -f README.md

echo "idk's mostly active projects" | tee README.md
echo "============================" | tee -a README.md
echo "" | tee -a README.md
cat desc | tee -a README.md
echo "" | tee -a README.md
for repo in $(cat config.rc); do
    echo -n "* [$repo]" | sed 's|https://github.com/eyedeekay/||g' | tr '-' ' ' | tr '_' ' ' | tee -a README.md
    echo "($repo)" | tee -a README.md
done

edgar -script Github.bundle.min.js,script.js