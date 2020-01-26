FROM node:12.14-alpine3.9

ARG WORKDIR=/usr/src/app

WORKDIR ${WORKDIR}

RUN apk update --no-cache && apk add --no-cache bash

# Install React Native
RUN npm install -g expo-cli
