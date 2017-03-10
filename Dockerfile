FROM java:8-jdk-alpine

ENV SBT_VERSION 0.13.13

RUN apk add --update curl tar bash nodejs git python && \
    rm -rf /var/cache/apk/*

RUN curl -sL "http://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-$SBT_VERSION.tgz" | gunzip | tar -x --strip=1 -C /usr/local

RUN sbt boot exit

