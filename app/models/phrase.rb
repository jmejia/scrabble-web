class Phrase < ActiveRecord::Base
  has_many :words
  # attr_accessible :title, :body

  def phrase
    words.join(" ")
  end

  def score
    word_scores = words.map do |word|
      word.score
    end

    word_scores.inject(0, :+)
  end
end
