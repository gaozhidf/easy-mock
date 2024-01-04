# build nodejs v8 project
FROM node:8-alpine
WORKDIR /app
COPY package*.json ./

RUN npm install
# RUN npm run build

COPY . .

EXPOSE 7300
CMD [ "npm", "run", "dev" ]
