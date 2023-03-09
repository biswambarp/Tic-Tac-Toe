FROM node:17-alpine

#Set work directory
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

CMD ["npm","start"]

