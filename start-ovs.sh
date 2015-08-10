#!/bin/bash

docker pull socketplane/openvswitch

CID=$(sudo docker run -itd --cap-add NET_ADMIN socketplane/openvswitch)

sudo pipework br201 -i eth1 $CID 0/0
sudo pipework br202 -i eth2 $CID 0/0
sudo pipework br203 -i eth3 $CID 0/0
sudo pipework br204 -i eth4 $CID 0/0
sudo pipework br105 -i eth5 $CID 0/0
sudo pipework br106 -i eth6 $CID 0/0
sudo pipework br107 -i eth7 $CID 0/0
sudo pipework br108 -i eth8 $CID 0/0

sudo docker exec -it $CID /bin/sh

