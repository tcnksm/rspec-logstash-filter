#!/bin/bash
set -e

echo "====> Build docker image for test"
docker build -t tcnksm/logstash-filter-test .

echo "====> Run test in docker container"
docker run --rm -it tcnksm/logstash-filter-test

