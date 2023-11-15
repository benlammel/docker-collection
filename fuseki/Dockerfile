
ARG OPENJDK_VERSION=22

FROM openjdk:${OPENJDK_VERSION}-slim AS base

RUN  apt-get update \
  && apt-get install -y wget

RUN wget https://download.lammel.ch/apache-jena-fuseki-4.10.0.tar.gz -O /opt/apache-fuseki.tar.gz

RUN tar -xvzf /opt/apache-fuseki.tar.gz -C /opt/

RUN mv /opt/apache-jena-fuseki* /opt/fuseki

EXPOSE 3030

WORKDIR /opt

#ADD entrypoint.sh .
#ENTRYPOINT ["./entrypoint.sh" ]
ENTRYPOINT ["sh", "/opt/fuseki/fuseki-server"]
#ENTRYPOINT ["tail", "-f", "/dev/null"]
#CMD []

