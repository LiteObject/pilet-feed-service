FROM node:latest

WORKDIR /usr/src/pilet-feed-svc
COPY . .
RUN npm i
RUN npm run build

EXPOSE 9000
CMD [ "npm", "run", "start" ]
