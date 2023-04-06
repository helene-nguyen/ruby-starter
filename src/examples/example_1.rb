puts "Enter a number :"

# convert to integer because gets.chomp GIVES A STRING
number = gets.chomp.to_i

# test if number is even
puts number.even?