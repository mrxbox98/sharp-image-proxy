FROM node:20

WORKDIR /usr/src/app

COPY package.json ./package.json

RUN npm install -g yarn

RUN yarn install

COPY . .

RUN yarn build

CMD [ "yarn", "start" ]
