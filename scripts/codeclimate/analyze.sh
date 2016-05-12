#!/bin/sh

cd code

sudo docker start

docker run -v /var/run/docker.sock:/var/run/docker.sock \
  -v $(which docker):$(which docker) \
  -ti codeclimate/codeclimate version

codeclimate analyze -f text -e duplication > report-duplication.txt
codeclimate analyze -f text -e eslint > report-eslint.txt
codeclimate analyze -f text -e fixme > report-fixme.txt
codeclimate analyze -f text -e nodesecurity > report-nodesecurity.txt
codeclimate analyze -f text -e requiresafe > report-requiresafe.txt
