#!/bin/sh

cd code
docker run \
  -v /var/run/docker.sock:/var/run/docker.sock
  -v $(which docker):$(which docker)
  -ti codeclimate/codeclimate analyze -f text -e fixme > report-fixme.txt
