#!/usr/bin/env ruby

puts "Hello, what's your name ?"
name = gets

puts "Hello #{name}, I'm a web developer :)"
puts "Oh no! Why it's broken into two lines?!"

# inspect what we really give
p name # expected result => "name\n"

# Remove 
puts "Again : Hello, what's your name ?"
name = gets.chomp

puts "Hello #{name}, I'm a web developer :)"