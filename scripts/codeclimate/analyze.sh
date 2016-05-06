#!/bin/sh

set -ex

# engine=$1

cd code

# docker run \
#   --interactive --tty --rm \
#   --env CODECLIMATE_CODE="$PWD" \
#   --volume "$PWD":/code \
#   --volume /var/run/docker.sock:/var/run/docker.sock \
#   --volume /tmp/cc:/tmp/cc \
#   codeclimate/codeclimate analyze -f text -e "$engine" > report-"$engine".txt

docker run \
  --interactive --tty --rm \
  --env CODECLIMATE_CODE="$PWD" \
  --volume "$PWD":/code \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --volume /tmp/cc:/tmp/cc \
  codeclimate/codeclimate analyze -f text -e fixme > report-fixme.txt
