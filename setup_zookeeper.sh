#!/bin/bash

wget https://mirror.navercorp.com/apache/zookeeper/zookeeper-3.7.0/apache-zookeeper-3.7.0-bin.tar.gz -P /tmp/
sudo tar -zxvf /tmp/apache-zookeeper-3.7.0-bin.tar.gz -C /opt/
sudo ln -s /opt/apache-zookeeper-3.7.0-bin /opt/zookeeper

sudo cp zoo.cfg /opt/zookeeper/conf/zoo.cfg

sudo mkdir -p /var/lib/zookeeper
sudo echo ${id} > /var/lib/zookeeper/myid