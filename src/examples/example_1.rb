puts "Enter a number :"

# convert to integer because gets.chomp GIVES A STRING
number = gets.chomp.to_i

# test if number is even that gives a boolean
puts number.even?

# condition
if number.even?
    puts "Number is even"
else
    puts "Number is odd"
end