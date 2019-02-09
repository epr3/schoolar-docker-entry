FROM node:11

RUN apt-get update && apt-get install -y wget

ADD . /node-app
WORKDIR /node-app
RUN npm install
CMD ["npm", "run", "start"]
