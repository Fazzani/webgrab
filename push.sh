#!/bin/bash

set -eux

git config --global user.email "fazzani.heni@outlook.com"
git config --global user.name "fazzani"
  
tar -cvf xmltv.tar $1/*.xml
git add --all
git commit -m "daily commit $(date +%d/%m/%y)" 
git push
