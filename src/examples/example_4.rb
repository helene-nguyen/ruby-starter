puts "Create an array"

array = ["a", "b", "c", 1, 2, 3, true, false]

puts "Array length: #{array.length}"

# push
array.push("Oh le")

array << "New info"

# join
puts array.join(", ")

puts array * " - "

# index
puts "At index 0: #{array[0]}"