class TextAnalyzer

  attr_accessor :text

  def initialize(text) @text = text end

  def count_of_words
    @text.split(" ").count
  end

  def count_of_vowels
    @text.downcase.scan(/[aeoui]/).count
  end

  def count_of_consonants
    @text.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter

    count = Hash.new(0)
    @text.downcase.scan(/[a-z]/) { |x| count[x] += 1 }
    count.max_by { |k,v| v }

  end

end
