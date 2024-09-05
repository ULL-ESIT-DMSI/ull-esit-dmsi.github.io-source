#!/bin/bash
ORG="ULL-ESIT-DMSI-2425"
if [ $# -eq 1 ]; then
  ORG=$1
fi
TEAMS=$(gh org-teams -o "$ORG")
echo $TEAMS