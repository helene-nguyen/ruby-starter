#!/usr/bin/env ruby

class MegaGreeter
  attr_accessor :names

  # Create an object
  def initialize(names = "World")
    @names = names
  end

  # Greet everybody
  def say_hi
    if @names.nil?
        puts "Sorry, nobody is here..."
    elsif @names.respond_to?("each")
        # names is a list of names, let's make a loop
        @names.each do |name|
            puts "Hello #{name}!"
        end
    else
        puts "Hello #{@names}!"
    end
end

# Say bye to everybody
  def say_bye
    puts "Is names an array ? #{@names.respond_to?("join")}"
    if @names.respond_to?("join")
      puts "Goodbye #{@names.join(",")}. Come back soon !"
    end
  end
end

if __FILE__ == $0
  megagreeter = MegaGreeter.new
  megagreeter.say_hi

  # change the name
  megagreeter.names = "everybody"
  megagreeter.say_hi

  # give an array of names
  megagreeter.names = ["Honey", "Lune", "Mymooh", "Fredo", "Gaetan"]
  megagreeter.say_hi
  megagreeter.say_bye

  megagreeter.names = nil
  megagreeter.say_bye

  megagreeter.names = nil
  megagreeter.say_hi
end
