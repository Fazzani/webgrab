#!/bin/bash

set -eux

tar -cvf xmltv.tar $1/*.xml
git add --all
git commit -m "daily commit $(date +%d/%m/%y)" 
git push
