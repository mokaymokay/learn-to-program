# This program will find out when I will or did turn one billion seconds old.

puts "I will turn one billion seconds old at " + (Time.mktime(1991, 12, 10,
  23, 00) + 1000000000).to_s
