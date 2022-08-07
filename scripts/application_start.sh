#!/bin/bash
sudo chmod -R 777 /home/ec2-user/pinbot-app
#navigate into working directory where we have all our github files
cd /home/ec2-user/pinbot-app

#add npm and node to the path
export NVM_DIR="$HOME/.nvm"
[ -s '$NVM_DIR/nvm.sh'] && \. "$NVM_DIR/nvm.sh"  #loads nvm
[ -s "$NVM_DIR/bash_completin"] && \. "$NVM_DIR/bash_completion"  #loads nvm bash_completion (node is in path )

#install node modules
npm install

#install puppeteer
# npm i puppeteer --save

# #install chrome
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# sudo apt install ./google-chrome-stable_current_amd64.deb


#start our node app in the background
node index.js > index.out.log 2> index.err.log < /dev/null &