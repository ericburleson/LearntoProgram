#LearnToProgram13.rb

class Array

  def shuffle 
    rec_shuffle(self, [])
  end


  def rec_shuffle sorted_array, shuffled_array

    if sorted_array.length <= 0
      return shuffled_array
    end

    still_sorted = []
    random_element = sorted_array[rand(sorted_array.length)] #choose a random item.

 
    #repeat process until the array is empty.

    sorted_array.each do |test_object|
      if random_element == test_object  
        shuffled_array.push(test_object) #Add the element to a new array.
      else 
        still_sorted.push(test_object) #Add the element back in the mix.
      end
    end
    rec_shuffle(still_sorted, shuffled_array) #Repeat as necessary.
  end
end

  test_array = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']
  puts test_array.shuffle
  puts
  test_array = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']
  puts test_array.shuffle
  puts
  test_array = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']
  puts test_array.shuffle

puts '------'

class Integer

  def factorial
    num = self
    if num < 0
      return 'You can\'t take the factorial of a negative number!'
    end

    if num <= 1
      1
    else
      num = num * (num - 1).factorial
    end

  end

end

puts 'Gimme a number to factorial!'
num = gets.chomp.to_i
puts num.factorial

puts '------'

class Integer

  def to_roman 
    
    integer = self
    thous = (integer        / 1000)
    hunds = (integer % 1000 / 100 )
    tens  = (integer % 100  / 10  )
    ones  = (integer % 10   / 1   )

    thousdig = 'M' * thous

    if hunds == 9
      hunddig = 'CM'
      elsif (hunds >= 5)
      hunddig =  'D' + ('C' * (hunds - 5))
      elsif hunds == 4
      huddig = 'CD' 
      else 
      hunddig = 'C' * hunds
    end

    if tens == 9
      tensdig = 'XC'
      elsif (tens >= 5)
      tensdig =  'L' + ('X' * (tens - 5))
      elsif tens == 4
      tensdig = 'XL'
      else 
      tensdig = 'X' * tens
    end

    if ones == 9
      onesdig = 'IX'
      elsif (ones >= 5)
      onesdig =  'V' + ('I' * (ones - 5))
      elsif ones == 4
      onesdig = 'IV'  
      else 
      onesdig = 'I' * ones
    end
    puts "#{thousdig}#{hunddig}#{tensdig}#{onesdig}"

  end

end

puts 'Gimme another number, I\'ll make it roman!'
response = gets.chomp.to_i
response.to_roman

puts '------'

class Die

  def roll
    1 + rand(6)
  end

end

puts '------'

#Let's make a couple dice.
dice = [Die.new, Die.new]

#...and roll 'em!
dice.each do |die|
  puts die.roll
end

puts '------'

class Die

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end
end

#Not saving this in a variable bc it won't be showing again.

puts Die.new.showing #this will display nil because it hasn't been rolled, which produces the number.

puts '------'


class Die

  def initialize
    #I'll just roll the die right from the get-go so that it's showing a number
    #Of course, we could just set it to something to show right from the start.
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

end

puts Die.new.showing

puts '------'

class Die

  def cheat
    
    puts 'What number do you want to show?'
    cheatnum = gets.chomp.to_i

    if cheatnum > 6 || cheatnum < 1
      puts 'That\'s not a valid die roll!'
      return
    end

    @number_showing = cheatnum
  end

end



dice = Die.new
puts dice.showing
dice.cheat

puts dice.showing

class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10    # He isn't hungry; he's full.
    @stuff_in_intestine = 0 # He doesn't need to go.
    @time = 0

    puts "#{@name} is born."
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
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
    puts "You toss #{@name} into the air."
    puts " He giggles, singing your eyebrows."
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "He briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "...but wakes when you stop."
    end
  end

  private
  #Private means that the methods defined here are internal to the object (You can feed your dragon, but 
  # you can't ask him if he's hungry.)

  def hungry?
    #Methods that end with ? usually return either true or false.
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      #Move food from belly to intestine
      @stuff_in_belly     = @stuff_in_belly     - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else # our dragon is starving!
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation, he eats YOU!"
      exit #This quits the program.
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} does the potty dance..."
    end
  end

end

pet = Dragon.new 'Norbert'
while @stuff_in_belly != 0
    puts "What do you want to do?"
    answer = gets.chomp.split(" ").join("_").downcase
    if answer == "exit"
      exit
    end
    pet.send("#{answer}")
  end

puts '------'

class OrangeTree
  def initialize name
    @name = name
    @age = 1
    @orange_count = 0       # No oranges on a tree this size.
    @height = 2             # It's only 2 feet tall.
    @actions_this_year = 0  # You can only do two actions any given year.

    puts "After a year growing in a pot, you finally planted #{@name} in your orange grove."
  end

  def shake                 # Shake the tree to make the oranges fall.
    if @orange_count == 0
      puts "You shake mightily, but nothing happens, since there are no oranges on the tree."
    else
      oranges_falling = rand(@orange_count)
      @orange_count = @orange_count - oranges_falling
      puts "You shake the tree, and #{oranges_falling} oranges fall from #{@name}'s branches."
    end
    @actions_this_year += 1
    one_year_passes if @actions_this_year == 2
  end

  def pick_orange           # Pick one and only one orange.
    if @orange_count == 0
      puts "There aren't any oranges to pick." 
    else
      @orange_count -= 1
      puts "You pick one orange from #{@name}'s branches."
    end
    @actions_this_year += 1
    one_year_passes if @actions_this_year == 2
  end

  def height?               # Find out how tall it is.  
    puts "#{@name} is #{@height} feet tall."
    @actions_this_year += 1
    one_year_passes if @actions_this_year == 2
  end

  def count_oranges         # Count the number of oranges. It increases from age 4 to 8, then stops.
    puts "There are #{@orange_count} oranges left in #{@name}'s branches."
    @actions_this_year += 1
    one_year_passes if @actions_this_year == 2
  end

  def age?
    puts "#{@name} is #{@age} years old."
  end

  private
  def young?
    @age < 4
  end

  def mature?
    @age >= 4 && @age < 8
  end

  def old?
    @age >= 8 && @age < 10
  end

  def dead?
    @age == 10 
  end


  def actions?
    @actions_left = 2 - @actions_this_year
    puts "You have #{@actions_left} actions left this year."
  end

  def one_year_passes
    @orange_count      = 0
    @actions_this_year = 0
    @age              += 1
    puts "Another year has passed; the oranges have fallen since last year. Have any grown this year?"

    if young?
      @orange_count  = 0
      @height       += 1
    end

    if mature?
      @orange_count  = @age - 3
      @height       += 1
    end

    if old? 
      @orange_count  = @age - 2
      @height       += 0
    end

    if dead?
      puts "Your tree has finally died."
      exit
    end
  end
end

puts "What is your tree's name?"
answer = gets.chomp
tree = OrangeTree.new "#{answer}"

 while @age != 10
    puts "What do you want to do?"
    answer = gets.chomp.split(" ").join("_").downcase
    if answer == "exit"
      exit
    end
    tree.send("#{answer}")
  end
