FROM node:latest

ENV NODE_ENV=production

WORKDIR /usr/src/app

COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]

RUN npm install --production && mv node_modules ../

COPY . .

EXPOSE 3000

CMD ["npm", "start"]