FROM node:20

RUN npm install -g json-server

WORKDIR /app

COPY db.json /app

EXPOSE 3000

CMD ["json-server", "--watch", "db.json", "--host", "0.0.0.0"]
