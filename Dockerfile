FROM postgres:9.6.1

ENV POSTGRES_DB=shipment_database
ENV POSTGRES_USER=shipment_database
ENV POSTGRES_PASSWORD=shipment_database

RUN apt-get update -qq && \
    apt-get install -y apt-utils postgresql-contrib

ADD *.sql /docker-entrypoint-initdb.d/
