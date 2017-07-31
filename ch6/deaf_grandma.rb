#Grandma is deaf!

puts 'HELLO?? IT\'S YOUR GRANDMAMA!'
count = 0
while count < 3
  if (reply = gets.chomp) != reply.upcase
  puts 'HUH?!  SPEAK UP, SONNY!'
  count = 0
  elsif reply == "BYE"
  count = (count + 1)
  puts 'I MISSED TALKING TO YOU, SONNY!'
  else
  puts 'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
  count = 0
  end
if count == 3
puts 'GOOD BYE, DEAR!'
end
end
