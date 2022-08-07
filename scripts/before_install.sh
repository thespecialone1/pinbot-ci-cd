#!/bin/bash

#download node and npm 
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -

#create our working directory if it doesnt exist
DIR="/home/ec2-user/pinbot-app"
if [ -d '$DIR']; then
    echo "${DIR} exists"
else
    echo "creating ${DIR} directory"
    mkdir ${DIR}
fi