class Anagram

  def initialize(word)
    @word = word
  end

  def match(array)
    output = []
    array.each do |a|
      unless a.downcase == @word.downcase
        output << a if test(a) == test(@word)
      end
    end
    output
  end

  def test(word)
    word.downcase.chars.sort
  end

end

module BookKeeping
  VERSION = 2
end