#!/bin/sh

cd code

docker run codeclimate/codeclimate analyze -f text -e fixme > report-fixme.txt
