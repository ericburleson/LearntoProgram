#LearnToProgram12.rb

birth = Time.local(1981, 11, 7, 13, 35, 27)
yay = birth + 1000000000
puts yay

puts '------'

puts 'What year were you born?'
year = gets.to_i
puts 'What month were you born? Please enter the number of the month.'
month = gets.to_i
puts 'What day were you born?'
day = gets.to_i

birthday = Time.local(year, month, day)
numberbday = ((Time.new.to_i - birthday.to_i) / 31557600)
puts 'SPANK ' * numberbday

puts '------'

dict_array = [] #Array literal; same as Array.new
dict_hash  = {} #Hash literal; same as Hash.new

dict_array[0]         = 'candle'
dict_array[1]         = 'glasses'
dict_array[2]         = 'truck'
dict_array[3]         = 'Alicia'
dict_hash['shia-a']   = 'candle'
dict_hash['shaya' ]   = 'glasses'
dict_hash['shasha']   = 'truck'
dict_hash['sh-sha']   = 'Alicia'

dict_array.each do |word|
  puts word
end

dict_hash.each do |c_word, word|
  puts "#{c_word}: #{word}"
end

puts '------'


#This is your range literal
letters = 'a'..'c'

#Convert range to array
puts(['a', 'b', 'c'] == letters.to_a)

#Iterate over a range
('A'..'Z').each do |letter|
  print letter
end
puts

god_bless_the_70s = 1970..1979
puts god_bless_the_70s.min 
puts god_bless_the_70s.max
puts(god_bless_the_70s.include?(1979  ))
puts(god_bless_the_70s.include?(1980  ))
puts(god_bless_the_70s.include?(1974.5))

puts '------'

da_man = 'Mr. T'
big_T  = da_man[4]
puts big_T

puts ?T
puts 84.chr

def roman_to_integer roman
  digit_vals = {'i' => 1,
                'v' => 5,
                'x' => 10,
                'l' => 50,
                'c' => 100,
                'd' => 500,
                'm' => 1000}
  total = 0
  prev = 0
  index = roman.length - 1

  while index >= 0
    
    c = roman[index].chr.downcase
    index = index - 1
    val = digit_vals[c]
    
    if !val
      puts 'This is not a valid roman numeral!'
      return
    end

    if val < prev
      val = val * -1
    else
      prev = val
    end

    total = total + val
  end

  total

end

puts(roman_to_integer('XCV'))

puts '------'

def roman_to_numeral roman
  test_array = roman.downcase.split(//)

  roman_key = {"m" => 1000, 
               "l" => 500, 
               "c" => 100, 
               "d" => 50,   
               "x" => 10 , "v" => 5,
               "i" => 1}

  final = []
  prev = 0
  index = roman.length - 1

  while index >=0
    hold = roman_key[test_array[index]]
    index = index - 1

    if !hold
      puts 'This is not a valid roman numeral!'
      return
    end

    if hold < prev
      hold = hold * -1
    else
      prev = hold
    end

    final.push(hold)

  end

  new_num = 0

  final.each { |a| new_num += a}

  new_num
end

puts roman_to_numeral('MCMXCIX')