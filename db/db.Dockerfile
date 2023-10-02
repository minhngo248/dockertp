FROM postgres:15.0-alpine

WORKDIR /tmp
COPY words.sql /tmp/words.sql