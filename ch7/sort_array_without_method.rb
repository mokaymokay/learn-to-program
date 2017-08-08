# This program allows the user to type in as many words as s/he wishes,
# one word per line, until pressing Enter on an empty line; then prints
# the words in alphabetical order WITHOUT using the "sort" method.

puts "Type in as many words as you want, one word per line, pressing Enter on an empty line when you're done. The program will sort the list in an alphabetical order."
words_list = []
while (word = gets.chomp) != ""
  words_list.push word
end

not_sorted = true
while not_sorted
  not_sorted = false
  (words_list.length - 1).times do |i|
    if words_list[i] > words_list[i + 1]
      words_list[i], words_list[i + 1] = words_list[i + 1], words_list[i]
      not_sorted = true
    end
end

puts array
end
