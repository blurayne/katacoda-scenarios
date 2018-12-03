#!/bin/bash
clear
_PWD=$(pwd)
apt -y install bash-completion 
curl -L -o- https://github.com/blurayne/katacoda-scenarios/raw/master/assets/examples.tar.gz | tar -C /home/scrapbook/ -xz 
cd $HOME/.bin && curl https://getmic.ro | bash 
echo "export EDITOR=$HOME/.bin/=micro" >> ~/.bashrc
cd $_PWD
clear
bash -i