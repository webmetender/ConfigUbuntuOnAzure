#!/bin/bash
sudo apt-get --yes --force-yes update && sudo apt-get --yes --force-yes upgrade
sudo apt-get --yes --force-yes install locate mlocate
sudo updatedb
sudo apt-get --yes --force-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev
sudo sysctl -w vm.nr_hugepages=128
sudo echo $'* soft memlock 262144\n* hard memlock 262144\n' >> /etc/security/limits.conf
sudo apt-get --yes --force-yes install git build-essential cmake automake libtool autoconf
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/scripts
./build_deps.sh && cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps
make -j$(nproc)
