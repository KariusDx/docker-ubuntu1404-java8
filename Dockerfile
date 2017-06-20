FROM ubuntu:14.04

RUN apt-get update \
 && apt-get install -y wget software-properties-common apt-transport-https git \
 && apt-get clean \
 && rm -rf /root/.cache

RUN apt-add-repository ppa:webupd8team/java \
 && apt-get update \
 && yes | apt-get install -y oracle-java8-installer=8u131-1~webupd8~2 \
 && rm -rf /var/cache/oracle-jdk8-installer \
 && apt-get clean \
 && rm -rf /root/.cache

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ENV PATH $JAVA_HOME/bin:$PATH
