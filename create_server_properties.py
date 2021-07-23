#!/bin/python3
import sys
from host_config import broker_list

id=sys.argv[1]

with open('server.properties.base', 'r') as f:
    text = f.read().format(id=id)
with open('server.properties', 'w') as f:
    f.write(text)

with open('hosts', 'w') as f:
    for i, b in enumerate(broker_list):
        if str(i+1) == id:
            f.write(f'0.0.0.0 broker{i+1}\n')
        else:
            f.write(f'{b} broker{i+1}\n')