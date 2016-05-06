#!/bin/sh

cd codeclimate-cli

docker pull codeclimate/codeclimate

docker run -v /var/run/docker.sock:/var/run/docker.sock \
  -v $(which docker):$(which docker) \
  -ti codeclimate/codeclimate help
