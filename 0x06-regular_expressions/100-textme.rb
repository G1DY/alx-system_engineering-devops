#!/usr/bin/env ruby
# run some statistics on the TextMe app text messages transactions
# Your script should output: [SENDER],[RECEIVER],[FLAGS]
# The sender phone number or name (including country code if present)
# The receiver phone number or name (including country code if present)
# The flags that were used

input_file = ARGV[0]
input_line = FILE.readlines(input_file)

input_lines.each do |line|
        fields = line.split(',')
	sender = fields[0]
	reciever = fields[1]
	flags = fields[2]
	puts "#{sender},#{reciever},#{flags}"
end
