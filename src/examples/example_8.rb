for num in 1..10
    puts num
end

for num in 1..10
    next if num == 5
    puts num
end

number_to_guess = 4
number_given = nil

# give 3 possibilities
for num in 1..3
    next if number_to_guess == number_given

    puts "Give me a number:"
    number_given = gets.chomp.to_i

    if number_given > number_to_guess
        puts "Too high!"
    elsif number_given < number_to_guess
        puts "Too low!"
    end
end

puts "Yeaaay! Bravo!" if number_given == number_to_guess

# do it 3 times another way to do it with block
3.times do |num| 
    next if number_to_guess == number_given
    
    puts "Give me a number:"
    number_given = gets.chomp.to_i

    if number_given > number_to_guess
        puts "Too high!"
    elsif number_given < number_to_guess
        puts "Too low!"
    end
end

puts "Yeaaay! Bravo!" if number_given == number_to_guess

# iterator with parameter for arrays
array = ["Fredo", "Gaëtan"]

array.each do |name|
    puts "Hello #{name}"
end

array.each_index do |index|
    puts "The index is #{index}"
end

# iterator with parameter for hash
person = {
    name: "Yumi",
    job: "Web developer"
}

person.each do |key, value|
    puts "The key : #{key}, the value: #{value}"
end
