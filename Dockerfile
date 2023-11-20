FROM node:20

WORKDIR /usr/src/app

COPY server.js ./server.js
COPY package.json ./package.json
COPY contracts/ ./contracts/
RUN npm install --production

ENV NODE_ENV=production

CMD ["node", "."]
