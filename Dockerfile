# Dockerfile
FROM node:22.14.0-bookworm-slim

WORKDIR /app

COPY . .

RUN npm install

CMD ["node", "-e", "console.log(require('./index.js')())"]
