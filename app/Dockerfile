FROM node:20-alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY ./package.json /usr/src/app/

RUN yarn install

COPY . .

EXPOSE 3000

CMD ["yarn", "dev"]