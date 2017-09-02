# This program displays the song 99 Bottles of Beer with two tweaks:
# 1) starts at 9999 bottles and 2) written in English instead of numerically.

require_relative "englishNumber_million.rb"

number = 9999

while number > 2
  puts englishNumber(number).capitalize + " bottles of beer on the wall, " + englishNumber(number) + " bottles of beer. \nTake one down and pass it around, " + englishNumber(number - 1) + " bottles of beer on the wall."
  number -= 1
end

puts "Two bottles of beer on the wall, two bottles of beer. \nTake one down and pass it around, one more bottle of beer on the wall."
puts "One bottle of beer on the wall, one bottle of beer. \nTake one down and pass it around, no more bottles of beer on the wall."
puts "No more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, nine thousand nine hundred ninty-nine bottles of beer on the wall."
