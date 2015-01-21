#!/usr/bin/env bash

git clone git://github.com/mininet/mininet
pushd mininet
git checkout -b 2.2.0 2.2.0
# Install kernel module, wireshark disector, openvswitch, mininet
. util/install.sh -3 -mwvnf

# cleanup
popd
