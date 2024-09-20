FROM node:14.1.0-slim

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

ENV MOVIE_CATALOG_SERVICE=http://localhost:8080

EXPOSE 3000

CMD ["npm", "start"]
