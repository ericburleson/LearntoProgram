#LearnToProgram5.rb

puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ' '
puts '5 is my favorite number!'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your mama did.'.to_f
puts ' '
puts 'stringy'.to_s
puts 3.to_i

puts 20
puts 20.to_s
puts '20'

puts 'Hello there. What\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)'

puts 'What\'s your first name?'
first_name = gets.chomp
puts 'What\'s your middle name?'
middle_name = gets.chomp
puts 'What\'s your last name?'
last_name = gets.chomp

full_name = first_name + ' ' + middle_name + ' ' + last_name
puts 'It\'s a pleasure to meet you, ' + full_name + '.'

puts 'What\'s your favorite number?'
num = gets.chomp.to_i
num1 = num + 1
puts 'Oh, ' + num.to_s + '?' + ' That\'s cool. I like ' + num1.to_s + ' myself. It\'s bigger.' 
