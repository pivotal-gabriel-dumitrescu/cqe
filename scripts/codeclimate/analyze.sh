#!/bin/sh

cd code

sudo docker -d
docker run codeclimate/codeclimate analyze -f text -e fixme > report-fixme.txt
