FROM postgres:latest

MAINTAINER Kieran Cornwall

COPY ./moviedata_dump.tar /
COPY ./docker-entrypoint.sh /docker-entrypoint-initdb.d/

EXPOSE 5432
