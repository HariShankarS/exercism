class Anagram

  def initialize(word)
    @word = word
  end

  def match(array)
    output = []
    array.each do |a|
      unless a.downcase == @word.downcase
        if test(a) == test(@word)
          output << a
        end 
      end
    end
    output
  end

  def test(word)
    word.downcase.chars.sort
  end

end