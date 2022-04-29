#!/bin/bash

modprobe tcp_bbr
echo "tcp_bbr" >> /etc/modules
echo 3 > /proc/sys/net/ipv4/tcp_fastopen
echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_all

echo "net.ipv4.icmp_echo_ignore_all = 1" >> /etc/sysctl.conf
echo "net.core.default_qdisc = fq_codel" >> /etc/sysctl.conf
echo "net.ipv4.tcp_notsent_lowat = 16384" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control = bbr" >> /etc/sysctl.conf
echo "net.ipv4.tcp_fastopen = 3" >> /etc/sysctl.conf
echo "net.ipv4.tcp_slow_start_after_idle = 0" >> /etc/sysctl.conf
echo "net.ipv4.tcp_tw_reuse = 1" >> /etc/sysctl.conf
echo "net.ipv4.tcp_ecn = 0" >> /etc/sysctl.conf
echo "vm.overcommit_memory = 1" >> /etc/sysctl.conf
echo "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf
echo "vm.swappiness = 50" >> /etc/sysctl.conf
echo "vm.vfs_cache_pressure = 50" >> /etc/sysctl.conf

sysctl -p
sysctl net.ipv4.tcp_available_congestion_control
sysctl net.ipv4.tcp_congestion_control
lsmod | grep bbr