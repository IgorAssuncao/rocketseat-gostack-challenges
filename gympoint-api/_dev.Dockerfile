FROM node:12-slim

ENV path=/home/gympoint/app

WORKDIR $path

COPY package.json yarn.lock ./
RUN yarn install
COPY . .

