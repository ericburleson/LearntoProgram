#LearnToProgram14.rb

toast = Proc.new do 
  puts "Cheers"
end

toast.call
toast.call
toast.call

puts '------'

do_you_like = Proc.new do |good_stuff|
  puts "I *really* like #{good_stuff}!"
end

do_you_like.call "chocolate"
do_you_like.call "Ruby"

puts "------"

def do_self_importantly some_proc
  puts "Everybody just HOLD ON! I\'m doing something..."
  some_proc.call
  puts "Okay, I\'m done. As you were."
end

say_hello = Proc.new do 
  puts "hello"
end

say_goodbye = Proc.new do 
  puts "goodbye"
end

do_self_importantly say_hello
do_self_importantly say_goodbye

puts '------'

def maybe_do some_proc
  if rand(2) == 0
    some_proc.call
  end
end

def twice_do some_proc
  some_proc.call
  some_proc.call
end

wink = Proc.new do
  puts '<wink>'
end

glance = Proc.new do
  puts '<glance>'
end

maybe_do wink
maybe_do wink
maybe_do glance
maybe_do glance
twice_do wink
twice_do glance

puts '------'

def do_until_false first_input, some_proc
  input  = first_input
  output = first_input
  
  while output
    input = output
    output = some_proc.call input
  end

  input
end

build_array_of_squares = Proc.new do |array|
  last_number = array.last
  if last_number <= 0
    false
  else
    # Take off the last number
    array.pop
    # and replace it with its square...
    array.push(last_number * last_number)
    # followed by the next smallest number
    array.push(last_number - 1)
  end
end

always_false = Proc.new do |ignore_me|
  false
end

puts do_until_false([5], build_array_of_squares).inspect

yum = "lemonade with a hint of orange blossom water."
puts do_until_false(yum, always_false)

puts '------'

def compose proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

square_it = Proc.new do |x|
  x * x
end

double_it = Proc.new do |x|
  x + x
end

double_then_square = compose double_it, square_it
square_then_double = compose square_it, double_it

puts double_then_square.call(5)
puts square_then_double.call(5)

puts '------'

class Array

  def each_even (&was_a_bloc_now_a_proc)
    # We start with true because
    # arrays start with 0, which is even
    is_even = true

    self.each do |object|
      if is_even
        was_a_bloc_now_a_proc.call object
      end

      # Toggle from even to odd, or odd to even
      is_even = !is_even
    end
  end

end

fruits = ['apple', 'bad apple', 'cherry', 'durian']
fruits.each_even do |fruit|
  puts "Yum! I just love #{fruit} pie, don't you?"
end

# Remember, we are only getting the even-numbered elements of this array,
# which happen to be odd numbers. Because eff-you.
[1,2,3,4,5].each_even do |odd_ball|
  puts "#{odd_ball} is NOT an even number!"
end

puts '------'

def profile block_description, &block
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_description} #{duration} seconds"
end

profile '25000 doublings' do
  number = 1
  25000.times do 
    number = number + number
  end

  puts "#{number.to_s.length} digits"
  # That's the number of digits in this HUGE number
end

profile 'count to a million' do
  number = 0
  1000000.times do
    number = number + 1
  end
end

puts '------'

def profile block_description, block
  # to turn profiling on or off, turn this to true or false

  profiling_enabled = false

  if profiling_enabled
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description} #{duration} seconds"
  else 
    block.call
  end
end

puts '------'

def grandfather_clock &block
  clock_hour   = Time.new.hour
  number_bells = 0

  if clock_hour <= 12
    number_bells = clock_hour
  else
    number_bells = clock_hour - 12
  end

  number_bells.times do
    block.call
  end
end

grandfather_clock do 
  puts 'DONG'
end

puts '------'

$times_run = 0

def log block_name, &block
  $indent = "  " * $times_run
  $times_run += 1
  puts "#{$indent}Beginning '#{block_name}'..."
  result = block.call
  $times_run -= 1
  $indent = "  " * $times_run
  puts "#{$indent}...finishing '#{block_name}', returning #{result}."
end

log "outer block" do
  log "some_little_block" do
    log "another tiny block" do
      "NOTHING, FOOL!"
    end
    42
  end
  log "yet_another_block" do
    "fourteen"
  end
  "finally!"
end

puts '------'






