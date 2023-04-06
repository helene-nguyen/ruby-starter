puts "Symbols"

# use :

object = { :note => 20 }

puts "The note is #{object[:note]}"
puts object

# another way to write

object = { note: 15 }

puts "The new note is #{object[:note]}"
puts object

# hash in hash

hash_in_hash = {
  name: "Symbols",
  numbers: [5, 8, 0, 1, 2, 3],
  dico: { text: "text", content: "Lorem ipsum" },
}

puts hash_in_hash
puts "Get the content: #{hash_in_hash[:dico][:content]}"

puts "Order: #{hash_in_hash[:numbers].sort.join(", ")}" 
puts "Keys: #{hash_in_hash.keys}"
puts "Values: #{hash_in_hash.values}"
