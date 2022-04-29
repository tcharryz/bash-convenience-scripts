#!/bin/bash

docker run --restart=on-failure --name sogatj -d -v /etc/soga/:/etc/soga/ --network host docker.io/vaxilu/soga \
--type=v2board \
--server_type=trojan \
--api=webapi \
--webapi_url=https://vb.xxxxxx.xyz  \
--webapi_key=xxxxxxxx \
--cert_domain=tj-xx.xxxxxxxx.xyz \
--cert_mode=dns \
--cert_key_length= \
--dns_provider=dns_cf \
--DNS_CF_Email=xxxxx@gmail.com \
--DNS_CF_Key=xxxxxxxxxxxxxxxxx \
--user_conn_limit=0 \
--user_speed_limit=0 \
--node_speed_limit=0 \
--check_interval=60 \
--node_id=3 \
--trojan_remote_addr=127.0.0.1 \
--trojan_remote_port=42337

docker run -dp 42337:80 docker.io/ilemonrain/html5-speedtest