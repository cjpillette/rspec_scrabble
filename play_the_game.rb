require_relative 'lib/game'

puts "Enter your scrabble word"
word = gets.chomp
puts "Does your word count for 1X, 2X or 3X"
special_count = gets.chomp
puts "The scrabble word for the word #{word} when it counts for #{special_count} is #{Game.new(word, special_count).word_scores_special(word).to_s}"
