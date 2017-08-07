# This program lists all of the leap years between two years provided by the user.
# Leap years are divisible by 4, and not divisible by 100 unless they are also divisible by 400.

puts 'I can tell you all of the leap years between two given years. Give me a starting year.'
starting = gets.chomp.to_i
puts 'Now give me an ending year.'
ending = gets.chomp.to_i
while starting <= ending
  if (starting % 4 == 0 && starting % 100 != 0 || starting % 400 == 0)
    puts "#{starting}"
  end
  starting.to_i += 1
end
