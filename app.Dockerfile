# belgianbeerexplorerapp:v1
FROM node:8-alpine
LABEL maintainer="bluefyreio"

WORKDIR /
RUN mkdir -p belgian-beer-explorer
COPY . /belgian-beer-explorer/
RUN  true \
    && chown -R root /belgian-beer-explorer/ \
    && true

WORKDIR /belgian-beer-explorer
RUN npm install
RUN npm run webpack

EXPOSE 5000
# CMD npm start
