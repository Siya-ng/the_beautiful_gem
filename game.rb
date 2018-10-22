
=begin
  Thid is a number guessing game. 
  Random number from 1 to 100 will be generated
  It will end when the player guess correctly 
=end

secret_number = Random.rand(1...100)
guess_range = [1, 100]


while true
  puts "Guess a number between #{guess_range[0]} and #{guess_range[1]}"
  guess_number = gets.chomp.to_i
  # if guess_number.is_a? != Numeric
  #   puts "Invalid,  Please enter a number"
  # end
  guess_number = guess_number.to_i
  if (guess_number > guess_range[1] || guess_number < guess_range[0])
    puts "Out of Range"
  elsif guess_number > secret_number
    guess_range[1] = guess_number
    # print guess_range
  elsif guess_number < secret_number
    guess_range[0] = guess_number
    # print guess_range
  else
    puts "Win"
    break
  end
end


