#!/bin/bash
clear
_PWD=$(pwd)
echo "Preparing environment..."
( apt -y install bash-completion ) > 1>/dev/null 2>&1 &
( curl -L -o- https://github.com/blurayne/katacoda-scenarios/raw/master/assets/examples.tar.gz | tar -C /home/scrapbook/ -xz  ) > /dev/null  2>&1  &
( cd $HOME/.bin && curl https://getmic.ro | bash  ) > /dev/null  2>&1  &
echo "export EDITOR=$HOME/.bin/=micro" >> ~/.bashrc
wait 
cd $_PWD
bash -i