#!/bin/python3
import sys
from host_config import broker_list, broker_postfix

if broker_postfix != "":
    broker_postfix = "-" + broker_postfix

myid=sys.argv[1]

with open('base-zoo.cfg', 'r') as f:
    text = f.read().format(postfix=broker_postfix)
with open('zoo.cfg', 'w') as f:
    f.write(text)

with open('base-server.properties', 'r') as f:
    text = f.read().format(id=myid, postfix=broker_postfix)
with open('server.properties', 'w') as f:
    f.write(text)

with open('hosts', 'w') as f:
    for i, b in enumerate(broker_list):
        ip = '0.0.0.0' if i+1 == int(myid) else b
        f.write(f'{ip} broker{i+1}{broker_postfix}\n')
