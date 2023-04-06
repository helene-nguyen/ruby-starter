text = "It was at this point that Bilbo stoppe d. Going on from there was the bravest thing he ever did. The tremendous things that happened afterward were as nothing compared to it. He fought the real battle in the tunnel alone, before he ever saw the vast danger that lay in wait. At any rate after a short halt go on he did; and you can picture him coming to the end of the tunnel, an opening of much the same size and shape as the door above. Through it peeps the hobbit's little head. Before him lies the great bottommost cellar or dungeon of the anhall cient dwarves right at the Mountain's root. It is almost dark so that its vastness can only be dimly guessed, but rising from the near side of the rocky floor there is a great glow. The glow of Smaug!"

given_word = "of"
nb_given_word = Hash.new(0)

# create array, replace speacial char by nothing with tr('what to change','into what'), make word in lowercase
text = text.tr('.,":!','').downcase.split(" ")

# how many times we find this word
text.each do |word|
    nb_given_word[word] += 1
end

nb_given_word.each do |word, count|
    # to_s optional
    puts "There are #{count.to_s} times the word '#{word}'"
end

=begin
%w{apple pear fig} => ["apple", "pear", "fig"] (shortcut)
=end

# order by frequence
ordered_list = nb_given_word.sort_by { |word, count| count }
ordered_list.reverse!

puts ordered_list.inspect


ordered_list.each do |word|
    # to_s optional
    puts "There are #{word[1].to_s} times the word '#{word[0]}'"
end

puts "The word '#{ordered_list.first[0]}' appears more than the other words."