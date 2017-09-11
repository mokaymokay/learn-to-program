# This "magical" die can return a number you wish to roll!

class Die

  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat
    puts "Let's cheat by entering the number you wish to roll."
    number = gets.chomp.to_i
    until number.between?(1, 6) do
      puts "Hey! You have to enter a number that's on the die."
      number = gets.chomp.to_i
    end
    @number_showing = number
    return @number_showing
  end
end

die = Die.new
puts "You rolled a #{die.showing}!"
puts "You rolled a #{die.cheat}! ;)"
