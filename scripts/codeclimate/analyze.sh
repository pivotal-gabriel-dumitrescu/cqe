#!/bin/sh

cd code

sudo docker -d
sudo docker run \
  --tty --rm \
  --volume .:/code \
  --volume /tmp/cc:/tmp/cc \
  codeclimate/codeclimate analyze -f text -e fixme > report-fixme.txt
