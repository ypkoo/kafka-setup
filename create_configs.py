#!/bin/python3
import sys
from host_config import broker_list

myid=sys.argv[1]

with open('server.properties.base', 'r') as f:
    text = f.read().format(id=myid)
with open('server.properties', 'w') as f:
    f.write(text)

with open('hosts', 'w') as f:
    for i, b in enumerate(broker_list):
        ip = '0.0.0.0' if i+1 == int(myid) else b
        f.write(f'{ip} broker{i+1}\n')