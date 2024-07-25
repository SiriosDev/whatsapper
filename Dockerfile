FROM zenika/alpine-chrome:124-with-puppeteer

ADD app /app
WORKDIR /app
USER root
COPY package*.json .
RUN npm install
EXPOSE 3000

VOLUME /data

ENTRYPOINT ["tini", "--", "node", "server.js"]
