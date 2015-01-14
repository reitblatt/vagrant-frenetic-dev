#!/usr/bin/env bash

git clone git://github.com/mininet/mininet
pushd mininet
git checkout -b 2.1.0p2 2.1.0p2
# Install 1.3 softswitch, kernel module, wireshark disector, openvswitch, mininet
. util/install.sh -3 -mwvn

# cleanup
popd
