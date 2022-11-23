FROM node:16.13.1-alpine3.14

WORKDIR /usr/src/app

COPY ["package.json", "yarn.lock", "bin", ".env", "tsconfig.json", "./"]

COPY . .

RUN yarn

RUN npx tsc

EXPOSE 3000

CMD yarn dev
