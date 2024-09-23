#!/bin/bash
# File conceived to run from the folder 
# /Users/casianorodriguezleon/campus-virtual/1920/dmsi1920/website/scripts/build-and-push.sh
# with PWD=/Users/casianorodriguezleon/campus-virtual/1920/dmsi1920/website
# Remotes:
# dmsi2425    git@github.com:ULL-ESIT-DMSI-2425/ull-esit-dmsi-2425.github.io.git
# origin      git@github.com:ULL-ESIT-DMSI/ull-esit-dmsi.github.io.git

touch .nojekyll;
git add . ;
git ci -am 'new build 2024/2025'; 
git push origin master;
git push dmsi2425 master