puts 'What\'s your first name?'
first_name = gets.chomp
puts 'What\'s your middle name?'
middle_name = gets.chomp
puts 'What\'s your last name?'
last_name = gets.chomp
full_name = first_name + middle_name + last_name
puts full_name
puts 'Did you know there are ' + full_name.length.to_s + ' letters in your name, ' + first_name + ' ' + middle_name + ' ' + last_name + '?'
