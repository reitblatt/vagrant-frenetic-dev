#!/usr/bin/env bash

opam repository add frenetic-opam https://github.com/frenetic-lang/opam-bleeding.git
opam update
opam install -y frenetic openflow topology packet pa_ounit quickcheck
