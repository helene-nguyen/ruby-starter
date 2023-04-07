# Simple block
array = %w{1 4 6 8}
new_array = array.map { |item| item.to_i * 2 }
puts new_array.inspect

=begin @example
we want to add a block
=end

def demo_1
  puts "Hello"
  yield # add the block "How are you?"
  puts "Bye bye"
end

demo_1 { puts "How are you?" } # add block

# yield with params
def demo_2
  puts "Hello"
  yield("everybody")
  puts "Bye bye"
end

demo_2 { |name| puts "How are you #{name}?" } # add block

# effective case
object = [
  { name: "circle", color: "green", points: 15 },
  { name: "triangle", color: "red", points: 5 },
  { name: "line", color: "blue", points: 4 },
]

average = 5

def pointsOverAverage(object, average)
  object.each do |element|
    if element[:points] >= average
      yield(element)
    end
  end
end

pointsOverAverage(object, average) do |element| #start the block to give to yield
  puts "#{element[:name]} is over the average"
end

# proc => no repetition code, use proc

a = [1, 4, 5, 6]
b = [7, 5, 5, 8]

a.map! { |n| n ** 2 }
b.map! { |n| n ** 2 }

puts a.inspect
puts b.inspect

square = Proc.new { |n| n ** 2 }

# cast Proc into block to use it as block

a.map!(&square) # give it as block
b.map!(&square) # give it as block
puts a.inspect
puts b.inspect

# Effective example

object_2 = [
  { name: "circle", color: "green", points: 3 },
  { name: "triangle", color: "red", points: 8 },
  { name: "line", color: "blue", points: 2 },
]

average_2 = 4

display_elem_over_average = Proc.new { |element| # param from yield
  puts "#{element[:name]} is over the average"
}

pointsOverAverage(object_2, average_2, &display_elem_over_average)

# use our proc and give it another argument

display_elem_over_average.call({ name: "square", color: "blue", points: 10 })
