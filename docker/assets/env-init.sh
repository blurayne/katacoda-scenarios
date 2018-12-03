#!/bin/bash
clear
_PWD=$(pwd)
echo "Preparing environment..."
( apt -y install bash-completion ) > /dev/null &
( curl -L -o- https://github.com/blurayne/katacoda-scenarios/raw/master/assets/examples.tar.gz | tar -C /home/scrapbook/ -xz  ) > /dev/null  &
( cd $HOME/.bin && curl https://getmic.ro | bash  ) > /dev/null  &
echo "export EDITOR=$HOME/.bin/=micro" >> ~/.bashrc
wait 
cd $_PWD
bash -i