FROM node:10.16.0-stretch-slim

MAINTAINER Austin Matzko <austin@pressedcode.com>

RUN apt-get -y update \
      && apt-get install --fix-missing --no-install-recommends -qq -y \
        vim \
        git-all \
      && apt-get clean \
      && rm -rf /var/lib/apt/lists/*_*

RUN npm install --unsafe-perm -g elm@0.19.0-no-deps

RUN npm install --unsafe-perm -g elm-format@0.8.1

RUN npm install --unsafe-perm -g elm-analyse@0.16.4

RUN npm -g install --unsafe-perm git+https://github.com/rogeriochaves/spades.git
