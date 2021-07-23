#!/bin/bash

sudo yum install -y java-1.8.0-openjdk-devel.x86_64

python3 create_configs.py $1
sudo bash -c 'cat hosts >> /etc/hosts'
. setup_zookeeper.sh
. setup_kafka.sh


sudo ./opt/zookeeper/bin/zkServer.sh start
sudo ./opt/kafka/bin/kafka-server-start.sh -daemon ../config/server.properties
