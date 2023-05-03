#!/usr/bin/env ruby
# a Ruby script that accepts one argument and pass it to a regular expression matching method
# regex should not contain square brackets

puts ARGV[0].scan(/hb+o?t+n/).join
