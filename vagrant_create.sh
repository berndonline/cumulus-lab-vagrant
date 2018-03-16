#!/bin/bash

EXIT=0
python ./topology_converter.py ./topology-production.dot -p libvirt --ansible-hostfile || EXIT=$?
echo $EXIT
exit $EXIT
