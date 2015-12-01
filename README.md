# RSpec logstash filter [![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](/LICENSE)

[Logstash](https://www.elastic.co/products/logstash) filter will be growing up forever. You need test before dead.

This repository includes a sample rspec test for logstash filter. Test is executed on Docker container :whale:. So all you need to prepare is docker environment. If you replace [`conf/filter.conf`](/conf/filter.conf) and [`spec/filter_spec.rb`](/spec/filter_spec.rb) with your own, you can test your filter. Feel free to fork or copy this repository.

To run sample test,

```bash
$ ./run.sh
```
