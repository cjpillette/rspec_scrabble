class Game
  attr_reader :word, :special_count

  def initialize(word, special_count)
    @word = word
    @special_count = special_count
  end

  def dictionary
    {
    "A" => 1, "B" => 3, "C" => 3, "D" => 2,
    "E" => 1, "F" => 4, "G" => 2, "H" => 4,
    "I" => 1, "J" => 8, "K" => 5, "L" => 1,
    "M" => 3, "N" => 1, "O" => 1, "P" => 3,
    "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
    "U" => 1, "V" => 4, "W" => 4, "X" => 8,
    "Y" => 4, "Z" => 10
    }
  end


  def word_to_char(word)
    if word == nil
      split_word = ''
    else
      split_word = word.upcase.split("")
    end
  end

  def score(char)
    score = dictionary[char]
  end

  def score_word(word)
    total = 0
    if word != nil
      word_to_char(word).each do |char|
        total += dictionary[char]
      end
    end
    return total
  end

  def word_scores_special(word)
    case @special_count
    when '1X'
      score_word(word) * 1
    when '2X'
      score_word(word) * 2
    when '3X'
      score_word(word) * 3
    else
      puts "you're not playing the game right"
    end
  end


end
