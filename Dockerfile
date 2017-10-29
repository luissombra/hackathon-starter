FROM node:8-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ADD package.json package-lock.json .env.example ./
RUN yarn --pure-lockfile
ADD . .

EXPOSE 3000

CMD ["npm", "start"]
