#!/bin/bash

wget https://mirror.navercorp.com/apache/kafka/2.8.0/kafka_2.13-2.8.0.tgz -P /tmp/
sudo tar -zxvf /tmp/kafka_2.13-2.8.0.tgz -C /opt/
sudo ln -s /opt/kafka_2.13-2.8.0 /opt/kafka

sudo cp server.properties /opt/kafka/config/server.properties
