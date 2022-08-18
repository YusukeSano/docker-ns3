#!/bin/bash

# Start debugging
set -x

# Install needed packages
apt-get update
apt-get upgrade -y
bash requirements.sh
rm -rf /var/lib/apt/lists/*

# Downloading a release of ns-3 as a source archive
# https://www.nsnam.org/docs/tutorial/html/getting-started.html
wget https://www.nsnam.org/releases/ns-allinone-3.36.1.tar.bz2
tar xjf ns-allinone-3.36.1.tar.bz2

# For click [Not working]
# https://www.nsnam.org/docs/models/html/click.html
cd ns-allinone-3.36.1
git clone https://github.com/kohler/click.git
cd click
./configure --disable-linuxmodule --enable-nsclick --enable-wifi
make
CLICK_PATH=$(pwd)
cd ../

# For BRITE
# https://www.nsnam.org/docs/models/html/brite.html
cd ns-allinone-3.36.1
hg clone http://code.nsnam.org/BRITE
cd BRITE
make
BRITE_PATH=$(pwd)
cd ../

# For OpenFlow
# https://www.nsnam.org/docs/models/html/openflow-switch.html
cd ns-allinone-3.36.1
hg clone http://code.nsnam.org/openflow
cd openflow
./waf configure
./waf build
OPENFLOW_PATH=$(pwd)
cd ../

# Building ns-3
cd ns-3.36.1
./ns3 configure --build-profile=debug --enable-examples --enable-tests --enable-python-bindings --enable-mpi --with-click=${CLICK_PATH} --with-brite=${BRITE_PATH} --with-openflow=${OPENFLOW_PATH}
./ns3 build
./ns3 run hello-simulator

# Stop debugging
set +x
