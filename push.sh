#!/bin/bash

set -eux

cd $1
tar -cvf xmltv.tar ./*.xml
cp xmltv.tar /webgrab/xmltv.tar
cd webgrab git add --all
git commit -m "daily commit $(date +%d/%m/%y)" git push
