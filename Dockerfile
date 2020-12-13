# build stage
FROM node:lts-alpine as build-stage
RUN mkdir -p /app
COPY . /app
WORKDIR /app
RUN npm config set registry https://registry.npm.taobao.org
RUN npm install
ENV NODE_ENV=production
EXPOSE 80
CMD  [ "npm","start" ]