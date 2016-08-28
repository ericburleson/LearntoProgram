#LearnToProgram8.rb

names = ['Ada', 'Belle', 'Chris']

puts names
puts
puts names[0]
puts names[1]
puts names[2]
puts names[3] #This is out of range.

puts '-----'

other_peeps = []

other_peeps[3] = 'beebee Meaner'
other_peeps[0] = 'A-ha'
other_peeps[1] = 'Seedee'
other_peeps[0] = 'beebee Ah-ha'

puts other_peeps

puts '-----'

languages = ['English', 'Norwegian', 'Ruby']

languages.each do |lang|
  puts 'I love' + lang + '!'
  puts 'Don\'t you?'
end

puts 'And let\'s hear it for Java!'
puts '<crickets chirp in the distance>'

puts '-----'

# go-go-gadget integer method
3.times do
  puts 'Hip-hip-hooray!'
end

2.times do
  puts 'You can say that again...'
end

puts '-----'

foods = ['artichoke', 'brioche', 'caramel']

puts foods
puts
puts foods.to_s
puts 
puts foods.join(', ')
puts
puts foods.join('  :)  ') + '  8)'

200.times do
  puts []
end

puts '-----' 

favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskers on kittens'

puts favorites[0]
puts favorites.last
puts favorites.length

puts favorites.pop
puts favorites
puts favorites.length

puts '-----'

words = []

word = 'hey'

while word != ''
puts 'Yo, gimme a word'
word = gets.chomp
words.push(word)
  if words.last == ''
    puts words.sort
    break
  end
end

puts '-----'

puts 'Table of Contents'.center(50)
table_of_contents = [['Chapter 1: Doing Stuff', 'page  1'], ['chapter 2: Doing other stuff', 'page 9'], ['Chapter 3: Stuff that\'s done', 'page 13']]
 table_of_contents.each do |array|
  puts array.first.ljust(30) + array.last.rjust(20)
end






