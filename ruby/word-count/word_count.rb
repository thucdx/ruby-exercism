module BookKeeping
  VERSION = 1
end

class Phrase
  attr_reader :word_count

  def initialize(phrase)
    @word_count = Hash.new(0)
    phrase.downcase.split(/[ ,]/).each do |word|
      i = 0
      j = word.length - 1
      i += 1 while i <= j && !self.class.is_alphanum(word[i])    
      j -= 1 while j >= i && !self.class.is_alphanum(word[j])
      word = word[i, j - i + 1]
      @word_count[word] += 1 if word != ""
    end
  end

  private
  def self.is_alphanum c
    ('a' <= c && c <= 'z') || ('0' <= c && c <= '9')
  end

end
