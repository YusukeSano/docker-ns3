#!/bin/bash

# Install needed packages
# https://www.nsnam.org/wiki/Installation#Ubuntu.2FDebian.2FMint

# minimal requirements for Python API users (release 3.30 and newer, and ns-3-dev)
apt-get install -y g++ python3 python3-dev pkg-config sqlite3 cmake wget tar bzip2

# additional minimal requirements for Python (development)
apt-get install -y python3-setuptools git mercurial

# Netanim animator
apt-get install -y qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools

# Support for ns-3-pyviz visualizer
apt-get install -y gir1.2-goocanvas-2.0 python3-gi python3-gi-cairo python3-pygraphviz gir1.2-gtk-3.0 ipython3

# Support for MPI-based distributed emulation
apt-get install -y openmpi-bin openmpi-common openmpi-doc libopenmpi-dev

# Support for bake build tool
apt-get install -y autoconf cvs bzr unrar

# Debugging
apt-get install -y gdb valgrind

# Support for utils/check-style.py code style check program
apt-get install -y uncrustify

# GNU Scientific Library (GSL) support for more accurate 802.11b WiFi error models (not needed for OFDM)
apt-get install -y gsl-bin libgsl-dev libgslcblas0

# To read pcap packet traces
apt-get install -y tcpdump

# Database support for statistics framework
apt-get install -y sqlite sqlite3 libsqlite3-dev

# Xml-based version of the config store (requires libxml2 >= version 2.7)
apt-get install -y libxml2 libxml2-dev

# Support for generating modified python bindings
apt-get install -y cmake libc6-dev libc6-dev-i386 libclang-dev llvm-dev automake python3-pip
python3 -m pip install cxxfilt cmake-format

# A GTK-based configuration system
apt-get install -y libgtk-3-dev

# To experiment with virtual machines and ns-3
apt-get install -y vtun lxc uml-utilities

# Support for openflow module (requires libxml2-dev if not installed above) and Boost development libraries
apt-get install -y libxml2 libxml2-dev libboost-all-dev
