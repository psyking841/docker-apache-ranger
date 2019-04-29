# Reference: https://github.com/coheigea/testcases/tree/master/apache/docker/ranger

FROM maven:3.5.3-jdk-8

LABEL version=1.2.0

ARG RANGER_VERSION=1.2.0

ADD https://jdbc.postgresql.org/download/postgresql-42.2.5.jar /opt

ADD http://mirrors.whoishostingthis.com/apache/ranger/${RANGER_VERSION}/apache-ranger-${RANGER_VERSION}.tar.gz /opt

COPY pom.xml /opt

WORKDIR /opt

RUN apt-get -q update && apt-get install -y -q python gcc \
 && tar zxvf apache-ranger-${RANGER_VERSION}.tar.gz \
 && cd apache-ranger-${RANGER_VERSION} \
 && mv /opt/pom.xml knox-agent \
 && mvn package assembly:assembly -DskipTests

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/

EXPOSE 6080

CMD ["ls", "/opt/apache-ranger-*/target/"]