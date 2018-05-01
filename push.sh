#!/bin/bash

# example to use with docker
# docker run -ti --rm --name xmltv -v /mnt/nfs/webgrab:/root -v $HOME/.ssh:/root/.ssh pallet/git-client bash -c \
# "git clone https://github.com/Fazzani/webgrab.git /webgrab && cd /webgrab && chmod +x /webgrab/push.sh && /webgrab/push.sh /root/xmltv"

set -eux

eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
tar -zcvf xmltv.tar.gz $1/*.xml
git add --all
git commit -m "daily commit $(date +%d/%m/%y)" 
git push
