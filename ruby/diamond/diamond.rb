class Diamond

  def self.make_diamond(letter)
    @alphabets = [*"A".."Z"]
    result = each_line(letter) + "\n"
    index = @alphabets.index(letter)
    j = 1
    until j > index do
      string = " " * j + each_line(@alphabets[index-j]) + " " * j + "\n"
      result.prepend(string)
      result += string
      j += 1
    end
    result
  end
  
  def self.each_line(letter)
    if letter == "A"
      letter
    else
      index = @alphabets.index(letter)
      i = (2 * index) - 1
      letter + ( " " * i ) + letter       
    end
  end

end

module Bookkeeping
  VERSION = 1
end