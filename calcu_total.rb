
# def calculateTotalAmount(amt)
#   amt_arr = amt.split(" ").map {|s| s.to_f}
#   total_amount = amt_arr.inject{|a, b | a + b}

#   return (total_amount * 1.1 * 1.07)
# end

# inject work similar to reduce

def calculateTotalAmount(amt)
  amt_arr = amt.split(" ").map(&:to_f)
  total_amount = amt_arr.inject{|a, b | a + b}
  return '%.2f' % (total_amount * 1.1 * 1.07)
end
#  &: is symbol # to proc conversion, part of ruby 1.9 and up
#  : 




puts "Enter the name"
name = gets.chomp
puts "Enter the amount"
amount = gets.chomp

puts "#{name} has to pay #{calculateTotalAmount(amount)}"
