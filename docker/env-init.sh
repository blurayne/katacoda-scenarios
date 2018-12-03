apt -y install bash-completion
curl -L -o- https://github.com/blurayne/katacoda-scenarios/raw/master/assets/examples.tar.gz | tar -C /home/scrapbook/ -xz
cd $USER/.bin && curl https://getmic.ro | bash 
echo 'alias edit=micro ' >> ~/.bashrc