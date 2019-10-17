FROM node:12.12.0-stretch-slim

WORKDIR /usr/app

COPY . .

RUN yarn install

EXPOSE 3000

CMD ["yarn", "dev"]
