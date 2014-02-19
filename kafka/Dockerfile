# DOCKER-VERSION 0.7.6

FROM ubuntu
MAINTAINER Christian Nguyen Van Than <cnguyen@viadeoteam.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y


# Install Java7
RUN apt-get install -y python-software-properties
RUN add-apt-repository ppa:webupd8team/java -y

RUN apt-get update
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java7-installer

# Install utilities
RUN apt-get install curl wget less vim -y

# Install zookeeper
RUN wget -q -O /opt/zookeeper-3.4.5.tar.gz http://apache.mirrors.pair.com/zookeeper/zookeeper-3.4.5/zookeeper-3.4.5.tar.gz
RUN tar -xzf /opt/zookeeper-3.4.5.tar.gz -C /opt
RUN ln -s /opt/zookeeper-3.4.5 /opt/zookeeper
RUN cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg
RUN mkdir /var/log/zookeeper
RUN chmod +w /var/log/zookeeper

# Install kafka 0.8.0
RUN curl -o /opt/kafka_2.8.0-0.8.0.tar.gz http://mir2.ovh.net/ftp.apache.org/dist/kafka/0.8.0/kafka_2.8.0-0.8.0.tar.gz
RUN tar -xzf /opt/kafka_2.8.0-0.8.0.tar.gz -C /opt/
RUN ln -s /opt/kafka_2.8.0-0.8.0 /opt/kafka


# add a script to start all
ADD ./start-server.sh /usr/local/bin/start-server.sh
RUN chmod +x /usr/local/bin/start-server.sh

# ENV VARIABLE
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
ENV ZOO_LOG_DIR /var/log/zookeeper
ENV JMX_PORT 7777

EXPOSE 9092 2181 2888 3888

# run commands
# CMD /opt/zookeeper-3.4.5/bin/zkServer.sh start

