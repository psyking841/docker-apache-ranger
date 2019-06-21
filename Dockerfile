# Reference: https://github.com/coheigea/testcases/tree/master/apache/docker/ranger

FROM maven:3.5.3-jdk-8

LABEL version=2.0.0-SNAPSHOT

ARG RANGER_VERSION=2.0.0-SNAPSHOT

ADD https://jdbc.postgresql.org/download/postgresql-42.2.5.jar /opt

WORKDIR /opt

RUN apt-get -q update && apt-get install -y -q python gcc git \
 && git clone -b master https://github.com/apache/ranger.git \
 && cd ranger \
 && mvn package assembly:assembly -DskipTests

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/

EXPOSE 6080

CMD ["ls", "/opt/apache-ranger-*/target/"]