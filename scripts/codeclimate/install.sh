#!/bin/sh

cd codeclimate-cli

# To install, run the following command as root:
curl -sSL -O https://get.docker.com/builds/Linux/x86_64/docker-1.11.1.tgz && sudo tar zxf docker-1.11.1.tgz -C && sudo /usr/local/bin/docker daemon

docker -d
sudo docker -d

sudo docker version

service docker restart
sudo service docker start

docker images
docker ps

docker pull codeclimate/codeclimate

docker images
docker ps

docker run -v /var/run/docker.sock:/var/run/docker.sock \
  -v $(which docker):$(which docker) \
  -ti codeclimate/codeclimate help
