#!/bin/bash
git clone https://github.com/fireice-uk/xmr-stak.git
echo "Enter below your desired donation percentage (2.0 by default) and press [ENTER]:"
read donationPerc
sudo echo -e "#pragma once\n\nconstexpr double fDevDonationLevel = $donationPerc / 100.0;\n" > ./xmr-stak/xmrstak/donate-level.hpp
sudo sed -i 's/"use_slow_memory" : "warn"/"use_slow_memory" : "no_mlck"/g' ./xmr-stak/xmrstak/config.tpl
sudo sed -i 's/"httpd_port" : 0/"httpd_port" : 12345/g' ./xmr-stak/xmrstak/config.tpl
sudo mkdir xmr-stak/build
cd xmr-stak/build
sudo cmake -DCMAKE-BUILD_TYPE=RELEASE -DMICROHTTPD_ENABLE=ON -DXMR-STAK_CURRENCY=monero -DXMR-STAK_COMPILE=native -DCPU_ENABLE=ON -DHWLOC_ENABLE=ON -DOpenCL_ENABLE=OFF -DCUDA_ENABLE=OFF ..
sudo make install
# config files are created where the worker is launched from,
# temporarly disabling the end of the script
# cd
# sudo ./xmr-stak/build/bin/xmr-stak
