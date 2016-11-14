class Phrase

  def initialize(words)
    @words = words
  end

  def word_count
    result = {}
    @words = @words.gsub(/[^0-9a-z']/i, ' ').downcase
    words = @words.split()
    words = words.map do |word|
      if word.split("").first.include?("'")
        word = word.chars
        word = word.drop(1)
        word.pop
        word = word.join
      else
        word
      end
    end  
    words.each do |word|
      if result.has_key?(word)
        result[word] += 1
      else
        result[word] = 1
      end
    end
    result
  end	

end