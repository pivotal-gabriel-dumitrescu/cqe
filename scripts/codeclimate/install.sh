#!/bin/sh

curl -L https://github.com/codeclimate/codeclimate/archive/master.tar.gz | tar xvz
cd codeclimate-* && sudo ./configure && sudo make install
codeclimate version
