#!/bin/bash
# This script is supposed to be run on Docker container.
# This means you can not run this script directly from your local env.
# 
# This script execute 2 type of tests.
# The one is syntax test by logstash command, the other is rspec test to check parsing result.
set -e

echo "----> Test filter syntax"
time ./opt/logstash/bin/logstash --configtest -f /test/conf/filter.conf

echo "----> Run rspec of filtering"
./opt/logstash/bin/rspec /test/spec/filter_spec.rb

