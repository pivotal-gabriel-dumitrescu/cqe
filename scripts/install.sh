#!/bin/sh

$PATH
pwd
pushd code
  pwd
  echo 'start install'
  npm install
  echo 'finish install'
popd
pwd
