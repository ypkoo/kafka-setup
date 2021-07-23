#!/bin/bash

python3 create_configs.py $1
sudo echo hosts >> /etc/hosts
. setup_zookeeper.sh
. setup_kafka.sh


sudo ./opt/zookeeper/bin/zkServer.sh start
sudo ./opt/kafka/bin/kafka-server-start.sh -daemon ../config/server.properties