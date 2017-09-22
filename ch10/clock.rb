# Write a method which takes a block and calls it once for each hour that has
# passed today. That way, if I were to pass in the block do puts 'DONG!' end,
# it would chime (sort of) like a grandfather clock. Test your method out with
# a few different blocks (including the one I just gave you). Hint: You can use
# Time.now.hour to get the current hour. However, this returns a number between
# 0 and 23, so you will have to alter those numbers in order to get ordinary
# clock-face numbers (1 to 12).

class Fixnum
  def grandfather_clock(number)
    number.times do
      puts "DONG!"
    end
  end
end

hours_passed = Time.now.hour
  if hours_passed > 12
    hours_passed -= 12
  else
    hours_passed
  end

520.grandfather_clock(hours_passed)
