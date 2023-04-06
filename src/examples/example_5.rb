puts "Create a hash"

myself = {'name' => 'Yumi', 'state_of_mind' => 'never give up'}

puts myself

puts myself['name']

# add values
myself["job"] = "web developer"

puts myself

# use hash with constructor
hash = Hash.new
puts hash

hash['name'] = 'Fredo'
puts hash

puts "Which class create hash instance ? => #{hash.class}"
