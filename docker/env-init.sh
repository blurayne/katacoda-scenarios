touch Makefile
touch docker-compose.yml
curl -L -o- https://github.com/blurayne/katacoda-scenarios/raw/master/assets/examples.tar.gz | tar -C /home/scrapbook/ -xz
curl https://getmic.ro | bash && mv micro ~/.bin