FROM node:11

WORKDIR /node-app

COPY package.json .

RUN npm install

COPY . .

CMD ["npm", "run", "start"]
