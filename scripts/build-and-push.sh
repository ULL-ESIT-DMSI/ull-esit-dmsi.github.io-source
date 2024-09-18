#!/bin/bash

cd ../website && \
#git init . && \
# ➜  website git:(master) git remote -v \
# origin  git@github.com:ULL-ESIT-DMSI-1920/ull-esit-dmsi-1920.github.io.git (fetch) \
touch .nojekyll && \
git add . && \
git ci -am 'new build 2024/2025'; \
git push --force origin master
git push --force dmsi2425 master