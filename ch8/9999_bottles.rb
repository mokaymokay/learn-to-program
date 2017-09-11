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

beer_mid = " of beer on the wall, "
beer_end = " of beer on the wall."
pass_around = " of beer. Take one down and pass it around, "

number.downto(0) do |number|
  if number > 1
    puts english_number(number).capitalize + "#{bottles(number)}" +
    beer_mid + english_number(number) + "#{bottles(number)}" + pass_around +
    english_number(number - 1) + "#{bottles(number - 1)}" + beer_end
  number -= 1
  elsif number > 0
    puts english_number(number).capitalize + "#{bottles(number)}" +
    beer_mid + english_number(number) + "#{bottles(number)}" + pass_around +
    "#{bottles(number - 1)}" + beer_end
  elsif number == 0
    puts "#{bottles(number)}".capitalize + beer_mid + "#{bottles(number)}" +
    pass_around + english_number(original_number) +
    "#{bottles(original_number)}" + beer_end
  end
end
