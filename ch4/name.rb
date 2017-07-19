puts 'What\'s your first name?'
firstName = gets.chomp
puts 'What\'s your middle name?'
middleName = gets.chomp
puts 'What\'s your last name?'
lastName = gets.chomp
# puts 'Hello, ' + firstName.to_s + ' ' + middleName.to_s + ' ' + lastName.to_s + '.'
puts "Hello, #{firstName} #{middleName} #{lastName}."
