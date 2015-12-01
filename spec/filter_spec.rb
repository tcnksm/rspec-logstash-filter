# coding: utf-8 
require "logstash/devutils/rspec/spec_helper"

describe "simple syslog line" do

  file = File.open("/test/conf/filter.conf","rb")
  config file.read
  file.close
  
  sample "Mar 16 00:01:25 evita postfix/smtpd[1713]: connect from tcnksm.net[168.100.1.3]" do
    insist { subject["message"] } == "connect from tcnksm.net[168.100.1.3]"
    insist { subject["program"] } == "postfix/smtpd"
  end
end

