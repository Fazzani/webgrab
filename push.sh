#!/bin/bash

set -eux

cd $1
tar -cvf xmltv.tar ./*.xml
git clone https://github.com/Fazzani/xmltv.git
cp xmltv.tar $1/xmltv.tar
cd xmltv git add --all
git commit -m "daily commit $(date +%d/%m/%y)" git push
