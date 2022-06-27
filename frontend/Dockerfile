FROM node:18-alpine

EXPOSE 3000

VOLUME /app
WORKDIR /app

VOLUME /build

RUN apk add rsync

CMD ["/app/bin/run.sh"]

