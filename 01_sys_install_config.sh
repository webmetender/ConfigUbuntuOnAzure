#!/bin/bash
sudo apt-get update && sudo apt-get upgrade
sudo apt-get --yes --force-yes install locate mlocate
sudo updatedb
sudo apt-get --yes --force-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev
sudo sysctl -w vm.nr_hugepages=128
sudo echo $'* soft memlock 262144\n* hard memlock 262144\n' >> /etc/security/limits.conf
