puts "Difference between Proc and Lambda"

def a_lambda
    a = lambda { return "Hello world from lambda!" }
    a.call
    return "Bye bye world from lambda!"
end

def a_proc
    a = Proc.new { return "Hello world from proc!" }
    a.call
    return "Bye bye world from proc!"
end

puts a_lambda
puts a_proc

=begin
lambda => check parameters + return function (doesn't block)
proc => doesn't check the number of parameters + return the proc, block inside the function
=end

puts "Another way to write lambda"

def a_lambda
    a = -> { return "Hello world from lambda new way!" }
    a.call
    return "Bye bye world from lambda new way!"
end

puts a_lambda