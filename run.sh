#!/bin/bash

# Install SDK
echo 'deb [trusted=yes] https://download.veinmind.tech/libveinmind/apt/ ./' | sudo tee /etc/apt/sources.list.d/libveinmind.list
sudo apt-get update
sudo apt-get install libveinmind-dev

# Install Runner
docker pull veinmind/veinmind-runner:latest
docker run --rm --mount 'type=bind,source=/,target=/host,readonly,bind-propagation=rslave' -v /var/run/docker.sock:/var/run/docker.sock veinmind/veinmind-runner $*