#!/bin/bash

docker run --restart=on-failure --name sogav -d -v /etc/soga2/:/etc/soga/ --network host docker.io/vaxilu/soga \
--type=v2board \
--server_type=v2ray \
--api=webapi \
--webapi_url=https://vb.118487.xyz/  \
--webapi_key=118487118487118487 \
--v2ray_reduce_memory=true \
--node_id=43