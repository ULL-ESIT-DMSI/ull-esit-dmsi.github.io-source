#!/bin/bash
ORG="ULL-ESIT-DMSI-2425"
if [ $# -eq 1 ]; then # See Rakefile target :teams
  ORG=$1
fi
TEAMS=$(gh org-teams -o "$ORG") # gh extension at https://github.com/gh-cli-for-education/gh-org-teams
echo $TEAMS