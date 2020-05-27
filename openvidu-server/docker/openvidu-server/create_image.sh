#!/bin/bash -xe

cp ../../target/openvidu-server-*.jar ./openvidu-server.jar
cp ../utils/discover_my_public_ip.sh ./discover_my_public_ip.sh

docker build -t skaas/openvidu-server:2.14.0 .

rm ./openvidu-server.jar
rm ./discover_my_public_ip.sh
