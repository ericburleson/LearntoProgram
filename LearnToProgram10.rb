#LearnToProgram10.rb

def ask_recursively question
  puts question
  reply = gets.chomp.downcase

  if reply == 'yes'
    true
  elsif reply == 'no'
    false
  else
    puts 'Please answer yes or no'
    ask_recursively(question)
  end
end

ask_recursively('Do you wet the bed?')

puts '-------'
def factorial num
  if num < 0
    return 'You can\'t take the factorial of a negative number!'
  end

  if num <= 1
    1
  else
    num * factorial(num - 1)
  end
end

puts factorial(3)
puts factorial(30)

puts '-------'

#Thes are just to make the map easier to read.
#'M' is visually denser than 'o'.

M = 'land'
o = 'water'

world = [[o,o,o,o,M,o,o,o,o,o,o],
        [o,o,o,o,M,M,o,o,o,o,o],
        [o,o,o,o,M,o,o,o,M,M,o],
        [o,o,o,M,o,o,o,o,o,M,o],
        [o,o,o,M,o,M,M,o,o,o,o],
        [o,o,o,o,M,M,M,M,o,o,o],
        [o,o,o,M,M,M,M,M,M,M,M],
        [o,o,o,M,M,o,M,M,M,o,o],
        [o,o,M,o,o,o,M,M,o,o,o],
        [M,M,o,o,o,M,o,o,o,o,o],
        [o,o,o,o,o,M,o,o,o,o,o]]

def continent_size world, x, y
  

  if world[y][x] != 'land'
    #either it's water or we already counted it, either way we don't want to count it now.
    return 0
  end

#So first we count this tile..
size = 1
world[y][x] = 'counted land'

#...then we count all of the neighboring land, and by extension and recursion, all it's neighbors...
size = size + continent_size(world, x - 1, y - 1)
size = size + continent_size(world, x - 1, y    )
size = size + continent_size(world, x - 1, y + 1)
size = size + continent_size(world, x    , y - 1)
size = size + continent_size(world, x    , y + 1)
size = size + continent_size(world, x + 1, y - 1)
size = size + continent_size(world, x + 1, y    )
size = size + continent_size(world, x + 1, y + 1)

size
end

puts continent_size(world, 5, 5)

puts '------'


def sorta unsorted
  rec_sort(unsorted,[])
end

def rec_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |test_object|
    if test_object < smallest
      still_unsorted.push(smallest)
      smallest = test_object
    else 
      still_unsorted.push(test_object)
    end
  end

  sorted.push(smallest)

  rec_sort(still_unsorted, sorted)
end

puts sorta(['b', 'd', 'a', 'e', 'c'])


puts '------'

def shuffle sorted_array
  rec_shuffle(sorted_array, [])
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

test_array = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']
puts shuffle(test_array)
puts
test_array = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']
puts shuffle(test_array)
puts
test_array = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']
puts shuffle(test_array)

puts '------'

def sorta unsorted
  rec_sort(unsorted,[])
end

def rec_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |test_object|
    if test_object.downcase < smallest.downcase
      still_unsorted.push(smallest)
      smallest = test_object
    else 
      still_unsorted.push(test_object)
    end
  end

  sorted.push(smallest)

  rec_sort(still_unsorted, sorted)
end

puts sorta(['Baboon', 'delta', 'Alpha', 'echo', 'Charlie', 'Crazy', 'cracko', 'BELTER'])

def english_number number
  #We accept numbers from 0 to 100.
  if number < 0
    return 'Please enter a number zero or greater.'
  end
  if number > 100
    return 'Please enter a number 100 or less.'
  end

  num_string = '' #This is the string we will return.

  #left is how much of the number we still have left to write out.
  #write is the part we are writing out right now.
  left = number
  write = left / 100 #How many hundreds left?
  left = left - (write * 100) #subtract off those hundreds

  if write > 0
    return 'One Hundred'
  end 

  write = left / 10 #How many tens left?  #1
  left  = left - (write * 10) #subtract off those tens #3

  if write > 0
    if write == 1 #Uh oh, since we can't write 'tenty-two', we have to make a special exception for these. #we are here
      if    left == 0
        num_string = num_string + 'ten'   
      elsif left == 1
        num_string = num_string + 'eleven'
      elsif left == 2
        num_string = num_string + 'twelve'
      elsif left == 3
        num_string = num_string + 'thirteen' #we are here
      elsif left == 4
        num_string = num_string + 'fourteen'
      elsif left == 5
        num_string = num_string + 'fifteen'
      elsif left == 6
        num_string = num_string + 'sixteen'
      elsif left == 7
        num_string = num_string + 'seventeen'
      elsif left == 8
        num_string = num_string + 'eighteen'
      elsif left == 9
        num_string = num_string + 'nineteen'
      end
      left = 0 #Since we took care of the ones place, we have nothing left to write.
    elsif write == 2
      num_string = num_string + 'twenty'
    elsif write == 3
      num_string = num_string + 'thirty'
    elsif write == 4
      num_string = num_string + 'fourty'
    elsif write == 5
      num_string = num_string + 'fifty'
    elsif write == 6
      num_string = num_string + 'sixty'
    elsif write == 7
      num_string = num_string + 'seventy'
    elsif write == 8
      num_string = num_string + 'eighty'
    elsif write == 9
      num_string = num_string + 'ninety'
    end

    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left  #How many ones left to write out?
  left  = 0     #Subtract off those ones

  if write > 0
    if write == 1
      num_string = num_string + 'one'
    elsif write == 2
      num_string = num_string + 'two'
    elsif write == 3
      num_string = num_string + 'three'
    elsif write == 4
      num_string = num_string + 'four'
    elsif write == 5
      num_string = num_string + 'five'
    elsif write == 6
      num_string = num_string + 'six'
    elsif write == 7
      num_string = num_string + 'seven'
    elsif write == 8
      num_string = num_string + 'eight'
    elsif write == 9
      num_string = num_string + 'nine'
    end
  end

  if num_string == ''
  #The only way num_string could be empty is if the number is zero.
  return 'zero'
  end

  #If we got this far, then we had a number between 1 and 100, and we need to return it.

  num_string
end

puts english_number( 13)
puts english_number(100)
puts english_number(  1)
puts english_number( 75)

puts '------'

def english_number number
  if number < 0 #No negative numbers
    return 'Please enter a number that is not negative.'
  end
  if number == 0
    return 'zero'
  end
  
  #no more special cases! No more returns!

  num_string = '' #This is the string that we will return.

  ones_place = ['one',       'two',      'three',
                'four',      'five',     'six',
                'seven',     'eight',    'nine' ]
  tens_place = ['ten',       'twenty',   'thirty',
                'forty',     'fifty',    'sixty',
                'seventy',   'eighty',   'ninety'] 
  teenagers  = ['eleven',    'twelve',   'thirteen',
                'fourteen',  'fifteen',  'sixteen', 
                'seventeen', 'eighteen', 'nineteen' ]

  #left is how much of the number we have left to write out.
  #write is the part that we are writing out now.

  left = number
  
  if left >= 1000000
    write = left / 1000000          #How many millions left?  3
    left  = left - (write * 1000000) #Get rid of those millions.  

    millions = english_number(write)

    if write > 0
    
      num_string = num_string + millions + ' million'

      if left > 0
        #So we don't write "two hundredfifty two"
        num_string = num_string + ' '
      end
    end
  end

  if left >= 1000
    write = left / 1000          #How many thousands left?  3
    left  = left - (write * 1000) #Get rid of those thousands.  

    thousands = english_number(write)

    if write > 0
    
      num_string = num_string + thousands + ' thousand'

      if left > 0
        #So we don't write "two hundredfifty two"
        num_string = num_string + ' '
      end
    end
  end

  write = left / 100          #How many hundreds left? 
  left  = left - (write * 100) #Get rid of those hundreds.
  if write > 0

    #Now here's the recursion.
    hundreds   = english_number(write)
    num_string = num_string + hundreds + ' hundred'

    if left > 0
      #So we don't write "two hundredfifty two"
      num_string = num_string + ' '
    end
  end

  write = left / 10          #How many tens left?
  left = left - (write * 10) #Get rid of those tens

  if write > 0
    if ((write == 1) and (left > 0))
      #Since we can't write out 'tenty-two' instead of 'twelve',
      #these will take care of the teenagers

      num_string = num_string + teenagers[left - 1]
      #the '-1' is because the index starts from zero,
      #therefore, teenagers[3] is 'fourteen'

      left = 0 #This is because we are done!
    else
      num_string = num_string + tens_place[write - 1]
      #the '-1' is for the same reason as above
    end

    if left > 0
      #So that we can hyphenate numbers in the tens.
      num_string = num_string + '-'
    end
  end

  write = left     #How many ones left to write out?
  left = 0         #Subtract off those ones

  if write > 0
    
    num_string = num_string + ones_place[write - 1]
    #The '-1' is for the same reason as above

  end

  #now we just return
  num_string
end

puts english_number( 0)
puts english_number( 9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(195954238)

puts '------'

puts 'Gimme a number!'
beer = gets.chomp.to_i
while beer != 0
  beernum = english_number(beer)
  puts "#{beernum} bottles of beer on the wall,"
  puts "#{beernum} bottles of beer!"
  puts "If one of those bottles should happen to fall..."
  beer = beer - 1
  beernum = english_number(beer)
  if beer == 1
    puts "#{beernum} bottle of beer on the wall!"
    puts "#{beernum} bottle of beer on the wall,"
    puts "#{beernum} bottle of beer!"
    puts "If that bottle should happen to fall..."
    puts "No more bottles of beer on the wall!"
    break
  end
  puts "#{beernum} bottles of beer on the wall!"
end


    