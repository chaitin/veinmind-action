#!/bin/bash

# Install Runner
docker pull veinmind/veinmind-runner:latest
docker run --rm --mount 'type=bind,source=/,target=/host,readonly,bind-propagation=rslave' -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`/data:/tool/resource veinmind/veinmind-runner $*