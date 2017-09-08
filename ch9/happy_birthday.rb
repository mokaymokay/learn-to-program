# Ask users when they were born to and give them 'SPANK!'s for each
# birthday they have had.

puts 'What year were you born?'
year = gets.chomp
puts 'What month were you born?'
month = gets.chomp
puts 'What day were you born?'
day = gets.chomp

now = Time.new
seconds_alive = Time.new - Time.mktime(year, month, day)
birthday_in_years = seconds_alive/(60*60*24*365)

puts "You\'re #{birthday_in_years.to_i} years old! You deserve #{birthday_in_years.to_i} spanks!"

(birthday_in_years.to_i).times do
  puts 'SPANK!'
end
