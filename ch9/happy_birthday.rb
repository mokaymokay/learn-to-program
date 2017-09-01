# Ask users when they were born to and give them 'SPANK!'s for each
# birthday they have had.

puts 'What year were you born?'
year = gets.chomp
puts 'What month were you born?'
month = gets.chomp
puts 'What day were you born?'
day = gets.chomp

now = Time.new
secondsAlive = Time.new - Time.mktime(year, month, day)
birthdayInYears = secondsAlive/(60*60*24*365)

puts "You\'re #{birthdayInYears.to_i} years old!"

(birthdayInYears.to_i).times do
  puts 'SPANK!'
end
