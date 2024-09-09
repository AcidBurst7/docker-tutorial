FROM node:latest

WORKDIR /home/server

RUN npm install -g json-server

COPY db.json /home/server/db.json

COPY alt.json /home/server/alt.json

ENTRYPOINT ["json-server", "--host", "0.0.0.0"]

CMD ["db.json"]
