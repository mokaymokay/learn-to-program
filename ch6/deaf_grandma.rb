# Grandma is pretty much deaf. She can only hear you if you shout (type in caps).
# Even if you shout, she'd respond in gibberish saying "NOT SINCE [random year
# from 1930-1950]". She will only go away if you shout "BYE" 3 times in a row.

puts 'HELLO?? IT\'S YOUR GRANDMAMA!'
bye_count = 0
while bye_count < 3
  if (reply = gets.chomp) != reply.upcase
    puts 'HUH?!  SPEAK UP, SONNY!'
    bye_count = 0
  elsif reply == "BYE"
    bye_count += 1
    puts 'I MISSED TALKING TO YOU, SONNY!'
  else
    puts 'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
    bye_count = 0
  end
end
puts 'GOOD BYE, DEAR!'
