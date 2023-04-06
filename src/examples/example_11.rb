# convert given string to an array of strings with *names
def list(*fruits)
  puts fruits.inspect
end

list("apple", "strawberry", "raspberry", "lemon")

def make_list(*fruits)
  fruits.each do |name|
    puts "- #{name}"
  end
end

make_list("apple", "strawberry", "raspberry", "lemon")

def make_list_ordered(*fruits)
  #   fruits_ordered = []

  #   fruits.each do |name|
  #     fruits_ordered << name.to_s
  #   end
  #   fruits_ordered.sort

  # refacto

  fruits_ordered = fruits.collect { |name| name.to_s }
  fruits_ordered.sort!

  return fruits_ordered

end

puts make_list_ordered("apple", "strawberry", :raspberry, "lemon").inspect
