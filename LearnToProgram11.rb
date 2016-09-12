#LearnToProgram11.rb

#The filename doesn't have to end with ".txt" but since it is valid, why not?
filename    = 'ListerQuote.txt'
test_string = 'I promise that I swear absolutely that' +
              'I will never mention gazpacho soup again.'

#The 'w' here is for write-access to the file
#since we are trying to write to it.

File.open filename, 'w' do |f|
  f.write test_string
end

read_string = File.read filename

puts(read_string == test_string)

puts '------'

require 'yaml'

test_array = ['Give Quiche a Chance', 
              'Mutants Out!',
              'Chameleon Life Forms, No thanks!']

#Here's half the magic

test_string = test_array.to_yaml
#You see? Kind of like to_s, and in fact it is a string, 
#but it's a yaml description of test_array

filename = 'RimmerTShirts.txt'

File.open filename, 'w' do |f|
  f.write test_string
end

read_string = File.read filename

#And the other half of the magic:
read_array = YAML::load read_string

puts(read_string == test_string)
puts(read_array  == test_array )

puts '------'

buffy_quote_1 = '\'Kiss rocks\'?
Why would anyone want to kiss...
Oh, wait, I get it.'

buffy_quote_2 = "'Kiss rocks'?\n" +
                "Why would anyone want to kiss...\n" +
                "Oh, wait, I get it."

puts buffy_quote_1
puts
puts(buffy_quote_1 == buffy_quote_2)

puts("3...\n2...\n1...\nHAPPY NEW YEAR!")

puts('single (\') and double (") quotes')
puts("single (') and double (\") quotes")

name = 'Luke'
zip  = 90210

puts "Name = #{name}, Zipcode = #{zip}"

puts "#{20 * 10**4 + 1} Leagues Under the Sea, THE REVENGE!"

puts '------'

#First we define those fancy methods...

def yaml_save object, filename
  File.open filename, 'w' do |f|
    f.write(object.to_yaml)
  end
end

def yaml_load filename
  yaml_string = File.read filename

  YAML::load yaml_string
end

#And now we use these fancy methods

test_array = ['Slick Shoes',
              'Bully Blinders',
              'Pinchers of Peril']

filename = 'DatasGadgets.txt'

#We save it
yaml_save(test_array, filename)

#we load it
read_array = yaml_load(filename)

puts(read_array == test_array)

puts '------'

# For Katy, with love

#This is where she stores all her pictures before she gets her YAML on and moves them to the server.
#Just for my own convenience, I'll go there now

#Skipped Katy, since it references files on her computer.

#moving to new_shuffle

def shuffle sorted_array
  rec_shuffle(sorted_array, [])
end

def rec_shuffle sorted_array, shuffled_array
 
  if sorted_array.length <= 0
    return shuffled_array
  end
 
 shuffled_array = []
 unshuffled_array = []
 random_element = sorted_array[rand(sorted_array.length)]
  #repeat process until the array is empty.

  sorted_array.each_with_index do |test_object, i|
    if  i % 2 == 0         
      shuffled_array.push(test_object) #Add the element to a new array.
    else 
      unshuffled_array.push(test_object) #Add the element back in the mix.
    end
  end
  shuffled_array + rec_shuffle(unshuffled_array, shuffled_array)
end

playlist = ['music/Jazz/Monk--Nutty/track08.ogg',
'music/Jazz/Monk--London_Collection_1/track05.ogg',
'music/Jazz/Monk--Nutty/track13.ogg',
'music/Jazz/Monk--Round_Midnight/track02.ogg',
'music/Jazz/Monk--Round_Midnight/track14.ogg',
'music/Jazz/Monk--Round_Midnight/track15.ogg',
'music/Jazz/Monk--Round_Midnight/track08.ogg',
'music/Rock/FNM--Who_Cares_A_Lot_2/track02.ogg',
'music/Rock/FNM--Who_Cares_A_Lot_2/track08.ogg',
'music/Rock/FNM--Who_Cares_A_Lot_1/track02.ogg',
'music/Rock/FNM--Who_Cares_A_Lot_2/track01.ogg']

puts shuffle(playlist)