#!/bin/bash
git clone https://github.com/fireice-uk/xmr-stak.git
echo "Enter below your desired donation percentage (2.0 by default) and press [ENTER]:"
read donationPerc
sudo echo $'#pragma once\n\nconstexpr double fDevDonationLevel = ${donationPerc} / 100.0;\n' >> xmr-stak/xmrstak/donate-level.hpp
mkdir xmr-stak/build
cd xmr-stak/build

