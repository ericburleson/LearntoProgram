#LearnToProgram6.rb

puts ('hello '.+'world')
puts ((10.*9).+9)
puts self

var1 = 'stop'
var2 = 'deliver repaid desserts'
var3 = '....TCELES B HSUP a magic spell?'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + ' characters'
puts 'in your name, ' + name + '?'

puts 'What is your first name?'
name1 = gets.chomp
puts 'What is your middle name?'
name2 = gets.chomp
puts 'What is your last name?'
name3 = gets.chomp

puts 'Did you know there are ' + (name1.length + name2.length + name3.length).to_s + ' letters'
puts 'in your name, ' + name1 + ' ' + name2 + ' ' + name3 + '?'

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

line_width = 50
puts('Old Mother Hubbard'.center(line_width))
puts('Sat in her cubbard'.center(line_width))
puts('Eating her curds and whey'.center(line_width))
puts('Along came a spider'.center(line_width))
puts('Who sat down beside her'.center(line_width))
puts('And scared her poor shoe dog away'.center(line_width))

line_width = 40
str = '--> text <--'
puts(str.ljust(line_width))
puts(str.center(line_width))
puts(str.rjust(line_width))
puts(str.ljust(line_width/2) + str.rjust(line_width/2))

puts 'What do you want to say to your boss?'
my_words = gets.chomp.upcase
puts 'WHADDAYA MEAN "' + my_words + '"?!? YOU\'RE FIRED!!'

line_width = 50
puts('Table of Contents'.center(line_width * 1.5))
puts('Chapter 1: Getting Started'.ljust(line_width) + 'page  1'.rjust(line_width/2))
puts('Chapter 2: Letters'.ljust(line_width) + 'page  9'.rjust(line_width/2))
puts('Chapter 3: Numbers'.ljust(line_width) + 'page 13'.rjust(line_width/2))

puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7
puts (5-2).abs
puts (2-5).abs

puts rand
puts rand
puts rand
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(1))
puts(rand(1))
puts(rand(1))
puts(rand(9999999999999))
puts('The weatherman said there is a ')
puts(rand(101).to_s + '% chance of rain,')
puts('but you can never trust a weatherman.')

srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ' '
srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))

puts (Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)
