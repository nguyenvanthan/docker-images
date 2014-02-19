#!/bin/bash

echo start zookeeper
/opt/zookeeper/bin/zkServer.sh start
echo start kafka
/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties
