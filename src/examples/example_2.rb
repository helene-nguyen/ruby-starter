puts "Guess the number Game"
puts "Give me a number:"

number = gets.chomp.to_i
number_to_guess = 10

# First way to do it : give a clue
if number < number_to_guess
    puts "No, no, #{number} is too low !"
elsif number > number_to_guess
    puts "No, #{number} is too high !"
else
    puts "You win !"
end

# Another way : Lose or win
puts "Give me a number:"

if number != number_to_guess
    puts "You lose!"
else
    puts "You win!"
end
