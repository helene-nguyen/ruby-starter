puts "Guess the number again until you find!"

number_to_guess = 10

puts "Give a number:"
number_given = gets.chomp.to_i

while number_given != number_to_guess
    puts "Wrong number, again:"
    number_given = gets.chomp.to_i
end
puts "Yes, this is the number!"

# New game
new_nb_to_guess = 15

puts "New game => Give a number:"
number_given = gets.chomp.to_i

while number_given != new_nb_to_guess
    if number_given > new_nb_to_guess
        puts "Too high!"
    elsif number_given < new_nb_to_guess
        puts "Too low!"
    end
    number_given = gets.chomp.to_i
end

puts "Yes, this is the number!"