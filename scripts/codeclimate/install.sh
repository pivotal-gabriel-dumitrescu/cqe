#!/bin/sh

cd codeclimate-cli

docker images
docker ps

docker pull codeclimate/codeclimate

docker images
docker ps

docker run -v /var/run/docker.sock:/var/run/docker.sock \
  -v $(which docker):$(which docker) \
  -ti codeclimate/codeclimate help
