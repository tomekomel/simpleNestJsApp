FROM node:10

ENV AP /data/app

RUN apt-get -y update
RUN mkdir -p $AP/node_modules && chown -R node:node $AP

WORKDIR $AP

COPY package*.json ./

RUN npm install

COPY . .

COPY --chown=node:node . .

USER node

EXPOSE 8080

CMD ["npm", "run", "start"]
