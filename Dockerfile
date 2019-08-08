FROM node:10.16.0-stretch-slim

MAINTAINER Austin Matzko <austin@pressedcode.com>

RUN npm install --unsafe-perm -g elm@0.19.0-no-deps

RUN npm install -g elm-format

RUN npm install -g elm-analyse

RUN npm -g install git+https://github.com/rogeriochaves/spades.git

ENTRYPOINT ["elm"]
