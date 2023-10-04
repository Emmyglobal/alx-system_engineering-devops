#!/usr/bin/env ruby
# A Script that matches a string that starts with h ends with n and can have ny single character in between.

puts ARGV[0].scan(/h.n/).join
