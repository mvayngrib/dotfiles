DEFAULT_VERSION=8.10.0

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

source ~/.bash_profile
nvm install $DEFAULT_VERSION
nvm alias default $DEFAULT_VERSION
nvm use $DEFAULT_VERSION
npm i -g npm@3
npm i -g npx ytdl mvayngrib/node-sanitize-filename nodemon static-serve