# This program displays the song 99 Bottles of Beer with two tweaks:
# 1) starts at 9999 bottles and 2) written in English instead of numerically.

require_relative "english_number_quintillion.rb"

number = 9999
original_number = number

def bottles(number)
  case number
    when 0
      return "no more bottles"
    when 1
      return " bottle"
    else
      return " bottles"
    end
  end

number.downto(0) do |number|
  if number > 1
    puts english_number(number).capitalize + "#{bottles(number)}" +
    " of beer on the wall, " + english_number(number) + "#{bottles(number)}" + " of beer.
    Take one down and pass it around, " + english_number(number - 1) +
    "#{bottles(number - 1)} of beer on the wall."
  number -= 1
  elsif number > 0
    puts english_number(number).capitalize + "#{bottles(number)}" +
    " of beer on the wall, " + english_number(number) + "#{bottles(number)}" + " of beer.
    Take one down and pass it around, " + "#{bottles(number - 1)} of beer on the wall."
  elsif number == 0
    puts "#{bottles(number)}".capitalize + " of beer on the wall, " + "#{bottles(number)}" + " of beer.
    Go to the store and buy some more, " + english_number(original_number) +
    "#{bottles(original_number)} of beer on the wall."
  end
end
