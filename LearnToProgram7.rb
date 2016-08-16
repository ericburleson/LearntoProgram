#LearnToProgram7.rb

puts 1 > 2
puts 1 < 2

puts '--------'

puts 5 >= 4
puts 5 <= 4


puts '--------'

puts 1 == 1
puts 2 != 1


puts '--------'


puts 'cat' < 'dog'

puts '--------'

puts 'bug lady' < 'Xander'
puts 'bug lady'.downcase < 'Xander'.downcase

puts '--------'

puts 2 < 10
puts '2' < '10'

puts '--------'

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Eric'
  puts 'What a lovely name!'
end

puts '--------'

puts 'I am a fortune-teller. Give me your name.'
name = gets.chomp

if name == 'Eric'
  puts 'I see great things in your future!'
else
  puts 'Your future is ...oh my! Look at the time!'
  puts 'I really have to go, sorry.'
end

puts '-------'

puts 'Hello, my name is Mrs. Gabbard. Welcome to seventh grade English.'
puts 'And your name is?'
name = gets.chomp

if name == name.capitalize
  puts 'Please take a seat, ' + name + '.'
else 
  puts name + '? You mean ' + name.capitalize + ', right?'
  puts 'Don\'t you even know how to spell your own name?'
  reply = gets.chomp

  if reply.downcase == 'yes'
    puts 'Hmmph. Well, sit down!'
  else
    puts 'GET OUT!'
  end
end

puts '--------'

input = ''

while input != 'bye'
  puts input
  input = gets.chomp
end

puts 'Come again soon!'

puts '--------'

while true
  puts 'What would you like C to do?'
  request = gets.chomp

  puts 'You say, "C, please ' + request +'"'

  puts 'C\'s response:'
  puts '"C ' + request + '."'
  puts '"Papa ' + request + ', too."'
  puts '"Mama ' + request + ', too."'
  puts '"Ruby ' + request + ', too."'
  puts '"Nono ' + request + ', too."'
  puts '"Emma ' + request + ', too."'
  puts 

  if request == 'stop'
    break
  end
end

puts '-------'

beer = 99
while beer != 0
  puts "#{beer.to_s} bottles of beer on the wall,"
  puts "#{beer.to_s} bottles of beer!"
  puts "If one of those bottles should happen to fall..."
  beer = beer - 1
  puts "#{beer.to_s} bottles of beer on the wall!"
end

puts '-------'


while true
  puts 'What do you want to say to Grandma?'
  gma = gets.chomp
  if gma == 'BYE'
    numbyes = 1
    puts 'I\'M NOT SURE WHAT HE WAS DOING IN THERE!'
    puts 'What do you want to say to Grandma?'
    gma = gets.chomp
    if gma == 'BYE'
      puts 'IT\'S IN THE FRIDGE, HONEY! HELP YOURSELF!'
      puts 'What do you want to say to Grandma?'
      gma = gets.chomp
      if gma == 'BYE'
        puts "BYE, HONEY!"
        break
      elsif  gma != gma.upcase
        puts 'HUH?!? SPEAK UP, SONNY!'
        next
      elsif gma == gma.upcase
        year = rand(40) + 1900
        puts "NO, NOT SINCE #{year.to_s}"
        next
      end
    elsif  gma != gma.upcase
      puts 'HUH?!? SPEAK UP, SONNY!'
      next
    elsif gma == gma.upcase
      year = rand(40) + 1900
      puts "NO, NOT SINCE #{year.to_s}"
      next
    end

  elsif  gma != gma.upcase
    puts 'HUH?!? SPEAK UP, SONNY!'
  elsif gma == gma.upcase
    year = rand(40) + 1900
    puts "NO, NOT SINCE #{year.to_s}"
  end
end

puts '------'

puts 'Please enter a starting year.'
start_year = gets.to_i
puts 'Please enter an ending year.'
end_year = gets.to_i
while start_year != (end_year + 1)
  if ((start_year % 100 == 0 ) && (start_year % 400 == 0))
    puts start_year.to_s
    start_year = start_year.to_i + 1
  elsif (start_year % 4 == 0) && (start_year % 100 != 0)
    puts start_year.to_s
    start_year = start_year.to_i + 1
  elsif (start_year % 4 != 0) || (start_year % 100 == 0)
    start_year = start_year + 1
  end
end

    
    



  

