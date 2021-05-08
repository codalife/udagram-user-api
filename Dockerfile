FROM node:10.22.1

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

RUN npm run tsc

EXPOSE 8080

CMD ["node", "./www/server.js"]
