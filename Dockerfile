FROM openjdk:8-alpine

MAINTAINER Barbosa <infobarbosa@yahoo.com.br>

RUN apk add --no-cache wget bash \
    && mkdir -p /opt/twitter2kafka

COPY start.sh /opt/twitter2kafka/
COPY twitter2kafka-1.0-SNAPSHOT.jar /opt/twitter2kafka/

WORKDIR /opt/twitter2kafka

CMD ["/opt/twitter2kafka/start.sh"]
