FROM node:16

WORKDIR /usr/src/app

COPY package.json .

COPY yarn.lock .

RUN yarn

COPY . .

RUN npx tsc

EXPOSE 3000

CMD ["yarn", "start"]


