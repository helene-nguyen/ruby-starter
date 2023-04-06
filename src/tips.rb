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
