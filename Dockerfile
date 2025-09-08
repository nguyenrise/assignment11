FROM node:20.17.0-alpine

WORKDIR /nguyen_sunrise_coding_assignment11

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 7775

CMD ["npm", "run", "dev"]