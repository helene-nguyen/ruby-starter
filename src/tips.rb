# multiple condition

cmd = gets.chomp

# case

case cmd
when "add"
  puts "Add a product"
when "delete"
  puts "Delete a product"
else
  puts "Unknown command"
end

# shortcut

another_cmd = gets.chomp

case another_cmd
when "add" then puts "Add a product"
when "delete" then puts "Delete a product"
else puts "Unknown command"
end

# ternary operation

a = 1
b = 4

puts a > b ? "a is higher than b" : "a is lower than b"

# respond_to?

def uppercase(word)
  if word.respond_to?(:to_s)
    word.to_s.upcase
  end
end

puts uppercase("test")
puts uppercase(4)
puts uppercase(%w{a b c d})

# convert array of mixed number int and string into array of integer

array = [1, "2", 3, "4", 5]
puts array.inspect

# Solution 1
array_1 = array.map { |i| i.to_i }
puts array_1.inspect

# Solution 2
array_2 = array.map(&:to_i)
puts array_2.inspect
