# Refine the provided program so that users can interact with the baby dragon.

class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly     = 10  # He's full.
    @stuff_in_intestine =  0  # He doesn't need to go.

    puts "#{@name} is born."
  end

  def list_of_commands
    puts "Here are some things you can do with #{@name}:"
    puts "feed, walk, put_to_bed, toss, rock"
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passageOfTime
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passageOfTime
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up in the air."
    puts "It giggles, which singes your eyebrows."
    passageOfTime
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "It briefly dozes off..."
    passageOfTime
    if @asleep
      @asleep = false
      puts "...but wakes when you stop."
    end
  end

  private

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passageOfTime
    if @stuff_in_belly > 0
      # Move food from belly to intestine.
      @stuff_in_belly     = @stuff_in_belly     - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else  # Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'It wakes up suddenly!'
      end
      puts "#{@name} is starving!  In desperation, it ate YOU!"
      exit  # This quits the program.
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "It wakes up suddenly!"
      end
      puts "#{@name}\'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'It wakes up suddenly!'
      end
      puts "#{@name} does the potty dance..."
    end
  end

end

puts "What do you wish to name your dragon?"
name = gets.chomp.to_s
pet = Dragon.new name
pet.list_of_commands

while true
  command = gets.chomp.to_s.downcase
  if command == "exit"
    exit
  elsif pet.respond_to?(command)
    pet.send command
  else
    puts "Please enter a valid command or 'exit' if you wish to quit the program."
    pet.list_of_commands
  end
end
