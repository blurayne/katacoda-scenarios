#!/bin/bash
clear
_PWD=$(pwd)
echo -n "Preparing environment..."
( apt -y install bash-completion nano ) 1>/dev/null 2>&1 &
( curl -q -L -o- https://github.com/blurayne/katacoda-scenarios/raw/master/assets/examples.tar.gz | tar -C /home/scrapbook/ -xz  ) 1>/dev/null 2>&1 &
( cd $HOME/.bin && curl https://getmic.ro | bash  ) 1>/dev/null  2>&1  &
echo "export EDITOR=$HOME/.bin/micro" >> ~/.bashrc
echo "alias edit=$HOME/.bin/micro" >> ~/.bashrc
wait 
echo 'export PS1="\[\033[0;32;40m\]\H\$\e[0m "' >> ~/.bashrc
cd $_PWD
clear
bash --version
echo
bash -i