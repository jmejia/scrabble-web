require 'spec_helper'

describe Phrase do
  describe "a new phrase" do
    it "has an empty list of words" do
      expect(Phrase.new.words).to eq([])
    end
  end

  it "has many words" do
    phrase = Phrase.new
    word = phrase.words.build word: "test"
    expect(phrase.words).to eq([word])
  end

  describe "#phrase" do
    it "puts the words back together again" do
      phrase = Phrase.new
      phrase.stub(:words).and_return(["this", "is", "sparta"])
      expect(phrase.phrase).to eq("this is sparta")
    end
  end

  describe "#score" do
    it "computes the total score for all the words" do
      phrase = Phrase.new
      word = Word.new(word: "hi", score: 5)
      phrase.words = [ word, word ]
      expect(phrase.score).to eq(10)
    end
  end

  it "returns #words sorted by score, descending"
end
