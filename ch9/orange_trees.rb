# Make an OrangeTree class that contains a height method which returns its height,
# and a one_year_passes method, which, when called, ages the tree one year. Each year
# the tree grows taller, and after some number of years, the tree should die.
# It only starts producing fruits after a few years of growing, and older trees
# produce more each year than younger trees. Also, create methods count_the_oranges
# (which returns the number of oranges on the tree) and pick_an_orange (which reduces
# the @orange_count by one and returns a string telling the user how delicious the
# orange was, or else it just says that there are no more oranges to pick this
# year). Any oranges that aren't picked fall off before the next year.

class OrangeTree

  def initialize
    @height = 0
    @age = 0
    @orange_count = 0

    puts "You planted an orange tree!"
  end

  def age
    puts "Your tree is #{@age} years old." unless @age > 100
    one_year_passes
  end

  def count_the_oranges
    puts "There are #{@orange_count} oranges on the #{@height}-feet-tall tree."
  end

  def pick_an_orange
    if @orange_count > 0
      @orange_count -= 1
      puts "You picked an orange. Yum! It's very succulent."
    else
      puts "There aren't any oranges on your tree. Please wait until the next season."
    end
  end

  def one_year_passes
    @orange_count = 0
    if @age <= 100
      @age += 1
    end
    if @height < 30
      @height += 3
    end
    if @age > 3
      @orange_count += @height * 10
    end
    if @age > 100
      puts "Your tree has gracefully retired after providing you with many delicious oranges."
      exit
    end
  end
end

tree = OrangeTree.new
101.times do
  tree.age
  tree.count_the_oranges
  tree.pick_an_orange
end
