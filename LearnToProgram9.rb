#LearnToProgram9.rb

puts 'Hello, and thank you for taking the time to help me with this experiment'
puts 'My experiment has to do with the way that people feel about Mexican food.'
puts 'Just think about Mexican food and try to answer every question honestly'
puts 'with either a "yes" or "no". My experiment has nothing to do with bed-wetting.'
puts

#We ask these questions, but we ignore the answers.

while true
  puts 'Do you like eating tacos?'
  answer = gets.chomp.downcase
  if (answer == 'yes' || answer == 'no')
    break
  else
    puts 'Please answer "yes" or "no".'
  end
end

while true
  puts 'Do you like eating burritos?'
  answer = gets.chomp.downcase
  if (answer == 'yes' || answer == 'no')
    break
  else
    puts 'Please answer "yes" or "no".'
  end
end

#We pay attention to *this* question, though
while true
  puts 'Do you wet the bed?'
  answer = gets.chomp.downcase
  if (answer == 'yes' || answer == 'no')
    if answer == 'yes'
      wets_bed = true
    else
      wets_bed = false
    end
      break
  else
    puts 'Please answer "yes" or "no".'
  end
end

while true
  puts 'Do you like eating chimichangas?'
  answer = gets.chomp.downcase
  if (answer == 'yes' || answer == 'no')
    break
  else
    puts 'Please answer "yes" or "no".'
  end
end

while true
  puts 'Do you like eating sopapillas?'
  answer = gets.chomp.downcase
  if (answer == 'yes' || answer == 'no')
    break
  else
    puts 'Please answer "yes" or "no".'
  end
end

puts 'Thank you for taking the time to help me with my experiment.'
puts 'In fact, this experiment has nothing to do with Mexican food.'
puts 'It is an experiment about bed-wetting. The Mexican food was '
puts 'just there to catch you off guard in the hopes that you would '
puts 'answer more honestly. Thanks again.'
puts
puts wets_bed

puts '------'

def say_moo
  puts 'mooooooooo'
end

say_moo
say_moo
puts 'coin-coin'
say_moo
say_moo


def say_moo number_of_moos
  puts 'mooooooooo' * number_of_moos
end

say_moo 3
puts 'oink-oink'

#This last line should throw an error because a parameter is missing.

say_moo 1

def double_this num
  num_times_2 = num * 2
  puts num.to_s + ' doubled is ' + num_times_2.to_s
end

double_this 44
#puts num_times_2.to_s

puts '-----'

tough_var = 'You can\'t even touch my variable!'

def little_pest tough_var
  tough_var = nil
  puts 'HAHA! I ruined your variable!'
end

little_pest tough_var
puts tough_var

puts '------'

def favorite_food name
  if name == 'Lister'
    return 'vindaloo'
  end

  if name == 'Rimmer'
    return 'mashed potatoes'
  end

  'hard to say...maybe plantain?'
end

def favorite_drink name
  if name == 'Jean-Luc'
    'tea, Earl Grey, hot'
  elsif name == 'Kathryn'
    'coffee, black'
  else
    'perhaps...horchata?'
  end
end

puts favorite_food('Rimmer')
puts favorite_food('Lister')
puts favorite_food('Cher')
puts favorite_drink('Kathryn')
puts favorite_drink('Oprah')
puts favorite_drink('Jean-Luc')

puts '------'

def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        answer = true
      else
        answer = false
      end
      break
    else 
      puts 'Please answer "yes" or "no".'
    end
  end

  answer #This is what we return.

end

puts 'Hello, and thank you for ...'
puts

ask 'Do you like eating tacos?' #Ignore this return value.
ask 'Do you like eating burritos?' #And this one.
wets_bed = ask 'Do you wet the bed?' #Return this value
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like eating horchata?'
ask 'Do you like eating flautas?'
puts 'DEBRIEFING'
puts 'Thank you for..'
puts 
puts wets_bed

puts '-------'



def ask2 question
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return
      else
        return
      end
      break
    else 
      puts 'Please answer "yes" or "no".'
    end
  end

end

puts 'Hello, and thank you for ...'
puts

ask 'Do you like eating tacos?' #Ignore this return value.
ask 'Do you like eating burritos?' #And this one.
wets_bed = ask 'Do you wet the bed?' #Return this value
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like eating horchata?'
ask 'Do you like eating flautas?'
puts 'DEBRIEFING'
puts 'Thank you for..'
puts 
puts wets_bed

puts '-------'

def old_roman_numeral integer
  roman = ''

  roman = roman + "M" * (integer /        1000)
  roman = roman + "D" * ((integer % 1000) / 500)
  roman = roman + "C" * ((integer %  500) / 100)
  roman = roman + "L" * ((integer %  100) /  50)
  roman = roman + "X" * ((integer %   50) /  10)
  roman = roman + "V" * ((integer %   10) /   5)
  roman = roman + "I" * ((integer %    5) /   1)
  puts roman
end

puts 'Gimme a number'
response = gets.chomp.to_i
old_roman_numeral(response)

puts '-------'

def new_roman_numeral integer
  thous = (integer        / 1000)
  hunds = (integer % 1000 / 100 )
  tens  = (integer % 100  / 10  )
  ones  = (integer % 10   / 1   )

  thousdig = 'M' * thous

  if hunds == 9
    hunddig = 'CM'
    elsif (hunds <= 5)
    hunddig =  'D' + ('C' * (hunds - 5))
    else 
    hunddig = 'C' * hunds
  end

  if tens == 9
    tensdig = 'XC'
    elsif (tens <= 5)
    tensdig =  'L' + ('X' * (tens - 5))
    else 
    tensdig = 'X' * tens
  end

  if ones == 9
    onesdig = 'IX'
    elsif (ones <= 5)
    onesdig =  'V' + ('I' * (ones - 5))
    else 
    onesdig = 'I' * ones
  end
  puts "#{thousdig}#{hunddig}#{tensdig}#{onesdig}"
end

puts 'Gimme another number'
response = gets.chomp.to_i
new_roman_numeral(response)






