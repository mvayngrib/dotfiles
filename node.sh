curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
nvm install node
nvm use node
nvm install 8.10.0 --reinstall-packages-from=node
nvm alias default 8.10.0
npm i -g npm@3
npm i -g npx ytdl mvayngrib/sanitize-filename nodemon static-serves