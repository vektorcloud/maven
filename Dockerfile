FROM quay.io/vektorcloud/oracle-jre:latest

ENV MAVEN_VERSION="3.3.9"
ENV MAVEN_RELEASE="http://www-eu.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz"

RUN \
  curl -Lo /tmp/maven.tar.gz "$MAVEN_RELEASE" && \
  mkdir /opt/maven && \
  tar -xvf /tmp/maven.tar.gz -C /opt/maven --strip=1 && \
  rm -v /tmp/maven.tar.gz

ENV PATH="$PATH:/opt/maven/bin"
