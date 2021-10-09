FROM node:16-alpine3.11

WORKDIR /app

COPY --from=jwilder/dockerize /usr/local/bin/dockerize /app
COPY ./package.json /app/
COPY ./package-lock.json /app/

RUN npm ci

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]