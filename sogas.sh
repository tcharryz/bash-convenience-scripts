#!/bin/bash

docker run --restart=on-failure --name sogas -d -v /etc/soga3/:/etc/soga/ --network host docker.io/vaxilu/soga \
--type=v2board \
--server_type=ss \
--api=webapi \
--webapi_url=https://vb.118487.xyz/  \
--webapi_key=118487118487118487 \
--node_id=69
