#!/usr/bin/env bash

opam repository add frenetic-opam https://github.com/frenetic-lang/opam-bleeding.git
opam update
opam install -y async pa_ounit quickcheck yojson

git clone https://github.com/frenetic-lang/ocaml-openflow.git
pushd ocaml-openflow
opam pin -k git add openflow .
opam install -y openflow
popd

git clone https://github.com/frenetic-lang/frenetic.git
pushd frenetic
opam pin -k git add frenetic .
opam install -y frenetic
popd
