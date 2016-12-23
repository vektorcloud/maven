FROM quay.io/vektorcloud/openjdk:latest

RUN VERSION="3.3.9" && \
  wget http://www-us.apache.org/dist/maven/maven-3/$VERSION/binaries/apache-maven-$VERSION-bin.tar.gz -O /tmp/maven.tar.gz && \
  mkdir -p /opt && \
  cd /opt && \
  tar -xvf /tmp/maven.tar.gz && \
  rm -v /tmp/maven.tar.gz && \
  ln -sv apache-maven* /opt/maven

ENV PATH="$PATH:/opt/maven/bin"
