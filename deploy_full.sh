#!/bin/sh

DEVICE_IP="10.11.99.1"
scp -r ./dist/draft.tar.gz root@$DEVICE_IP:~/
ssh root@$DEVICE_IP 'tar -vxpf draft.tar.gz -C /'