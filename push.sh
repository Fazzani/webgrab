#!/bin/bash

# example to use with docker
# docker run -ti --rm --name xmltv -v /mnt/nfs/webgrab:/root -v $HOME/.ssh:/root/.ssh pallet/git-client bash -c \
# "git clone https://github.com/Fazzani/webgrab.git /webgrab && cd /webgrab && chmod +x /webgrab/push.sh && /webgrab/push.sh /root/xmltv"

set -eux
#git config --global user.email "fazzani.heni@outlook.com"
#git config --global user.name "fazzani"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
tar -cvf xmltv.tar $1/*.xml
git add --all
git commit -m "daily commit $(date +%d/%m/%y)" 
git push
