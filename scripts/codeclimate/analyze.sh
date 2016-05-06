#!/bin/sh

cd code

docker run \
  --interactive --tty --rm \
  --volume .:/code \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --volume /tmp/cc:/tmp/cc \
  codeclimate/codeclimate analyze -f text -e fixme > report-fixme.txt
