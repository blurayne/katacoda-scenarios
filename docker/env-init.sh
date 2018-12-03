#!/bin/bash

install_assets() {
    curl -L -o- https://github.com/blurayne/katacoda-scenarios/raw/master/assets/examples.tar.gz | tar -C /home/scrapbook/ -xz
}

install_micro() {
    cd $USER/.bin && curl https://getmic.ro | bash 
    echo 'alias edit=micro ' >> ~/.bashrc
}

install_bash_completion() {
  apt install bash-completion
}

install_assets &
install_micro &
install_bash_completion &
wait 