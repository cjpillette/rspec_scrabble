require 'game'
require 'spec_helper'

describe Game do

###########################
  describe 'word' do

    context "given the string cat" do
      it "reads the string cat" do
        game = Game.new('cat', '1X')
        expect(game.word).to eq("cat")
      end
    end

    context "given the string cAt" do
      it "reads the string CAT" do
        game = Game.new('cAt', '1X')
        expect(game.word.upcase).to eq("CAT")
      end
    end

    context "given the string cat" do
      it "includes the letter 'C', the letter 'A', the letter 'T'" do
      game = Game.new('CAT', '1X')
      expect(game.word_to_char('CAT')).to include("C", "A", "T")
      end
    end
  end

#############################
  describe 'score' do

    context "given the char C" do
      it "expects to return 3" do
       game = Game.new("C", '1X')
       expect(game.score('C')).to eq(3)
     end
    end

    context "given the string CAT" do
      it "expects to fetch value of each letter" do
        game = Game.new("CAT", '1X')
        expect(game.score_word('CAt')).to eq(5)
      end
    end

    context "given an empty string" do
      it "expects to return 0" do
        game = Game.new("", '1X')
        expect(game.score_word('')).to eq(0)
      end
    end

    context "given nil" do
      it "expects to return 0" do
        game = Game.new(nil, '1X')
        expect(game.score_word(nil)).to eq(0)
      end
    end

  end

  ####################################
  describe 'special cases' do

    context "given the word CAT and word counts for double" do
      it 'expects to return 10' do
        game = Game.new('CAT', '2X')
        expect(game.word_scores_special('CAT')).to eq(10)
      end
    end

    context "given the word CAT and word counts for triple" do
      it 'expects to return 10' do
        game = Game.new('CAT', '3X')
        expect(game.word_scores_special('CAT')).to eq(15)
      end
    end

  end

end
