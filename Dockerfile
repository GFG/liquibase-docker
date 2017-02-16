FROM openjdk:8-alpine

MAINTAINER Hussani Oliveira <contato@hussani.com.br>

RUN mkdir -p /usr/local/bin/lib /install \
    && cd /install \
    && apk add --no-cache wget \
    && wget https://github.com/liquibase/liquibase/releases/download/liquibase-parent-3.5.3/liquibase-3.5.3-bin.tar.gz \
    && gunzip liquibase-3.5.3-bin.tar.gz \
    && tar -xvf liquibase-3.5.3-bin.tar \
    && mv liquibase.jar /usr/local/bin/lib/liquibase.jar \
    && cd .. \
    && rm -rf /install \
    && apk del wget

COPY liquibase.sh /usr/local/bin/liquibase

VOLUME ["/liquibase"]

WORKDIR /liquibase
