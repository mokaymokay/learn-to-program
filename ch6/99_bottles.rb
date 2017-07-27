number = 99
while number >2
  new_number = number.to_i - 1
  puts "#{number} bottles of beer on the wall, #{number} bottles of beer. \nTake one down and pass it around, #{new_number} bottles of beer on the wall."
  number = number.to_i - 1
  puts
end
puts "1 bottle of beer on the wall, 1 bottle of beer. \nTake one down and pass it around, no more bottles of beer on the wall."
puts
puts "No more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall."
