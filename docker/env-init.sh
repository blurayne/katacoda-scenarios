#!/bin/bash
( apt -y install bash-completion ) &
( curl -L -o- https://github.com/blurayne/katacoda-scenarios/raw/master/assets/examples.tar.gz | tar -C /home/scrapbook/ -xz ) &
( cd $USER/.bin && curl https://getmic.ro | bash  ) &
echo "export EDITOR=$HOME/.bin/=micro" >> ~/.bashrc
wait
exec bash
