npm install -g coffee-script forever gulp

cd pdfy2

mkdir errors
mkdir logs
mkdir persist
mkdir storage
mkdir thumbnails
mkdir -p ~/.forever/logs

npm install

cp dev/config.json .

./node_modules/.bin/knex seed:run
./node_modules/.bin/knex migrate:latest
