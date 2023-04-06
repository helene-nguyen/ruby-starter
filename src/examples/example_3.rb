puts "Is the word a palindrom?"
puts "Give me a word:"

# convert string to lowercase
word = gets.chomp.downcase

def isPalindrom(word)
    if word != word.reverse
        puts "No, no... It's not a palindrom!"
    else
        puts "Yes! The word '#{word}' is a palindrom!"
    end
end

isPalindrom(word)