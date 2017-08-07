# This program allows the user to type in as many words as s/he wishes,
# one word per line, until pressing Enter on an empty line; then prints
# the words in alphabetical order.

puts "Type in as many words as you want, one word per line, pressing Enter on an empty line when you're done. The program will sort the list in an alphabetical order."
array = []
while (word = gets.chomp) != ""
  array.push word
end
puts array.sort
