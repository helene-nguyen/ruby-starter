number_to_guess = 4
number_given = nil

# give 3 possibilities
loop do
  puts "Give me a number:"
  number_given = gets.chomp.to_i

  if number_given > number_to_guess
    puts "Too high!"
  elsif number_given < number_to_guess
    puts "Too low!"
  else
    puts "Yeeaaay!"
    break
  end
end
