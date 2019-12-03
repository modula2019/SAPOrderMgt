# init.sh

clear

docker-compose stop

docker-compose build

docker-compose up -d

cd ./ordermgt-api && npm install && node server.js

# docker-compose start