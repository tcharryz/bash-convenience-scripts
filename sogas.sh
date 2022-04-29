#!/bin/bash

docker run --restart=on-failure --name sogas -d -v /etc/soga3/:/etc/soga/ --network host docker.io/vaxilu/soga \
--type=v2board \
--server_type=ss \
--api=webapi \
--webapi_url=https://vb.xxxxxx.xyz/  \
--webapi_key=xxxxxxxxxxxx \
--node_id=69
