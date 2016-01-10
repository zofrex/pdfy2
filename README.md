# PDFy

This is the source code for [PDFy](https://pdf.yt/).

## Setup

### Using Vagrant image

```
vagrant up
vagrant ssh
cd pdfy2
gulp
```

Visit the website at http://localhost:3000

### Manual

* Install authbind, graphicsmagick, and mysql
* Install nodejs 0.12 (you probably want to use nvm)
* Run `npm install -g coffee-script forever`
* Run `./setup.sh`
* Create a "config.json" file and configure the database, storage, and admin credentials
* `./node_modules/.bin/knex seed:run`
* `./node_modules/.bin/knex migrate:latest`
* Run `gulp`
* Visit the website at "yourhost:3000"!

## License

[WTFPL](http://www.wtfpl.net/txt/copying/) or [CC0](https://creativecommons.org/publicdomain/zero/1.0/), whichever you prefer.