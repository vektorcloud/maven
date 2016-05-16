FROM quay.io/vektorcloud/oracle-jre:latest

ENV MAVEN_VERSION="3.3.9"
ENV MAVEN_RELEASE="http://www-eu.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz"

WORKDIR /opt/maven
RUN curl -Ls "$MAVEN_RELEASE" | tar zxvf - -C /opt/maven --strip=1

ENV PATH="$PATH:/opt/maven/bin"
