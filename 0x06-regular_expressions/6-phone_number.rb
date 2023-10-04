#!/usr/bin/env ruby
# A Script that matches a 10 digit phone number.

puts ARGV[0].scan(/\A\d{10}\z/).join
