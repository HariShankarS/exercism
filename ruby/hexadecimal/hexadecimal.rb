class Hexadecimal
  
  def initialize(string)
    @string = string
  end

  def to_decimal
    number = 0
    if ( @string.chars - ( [*"a".."f"] + [*"0".."9"] ) ) != []
      0
    else
      @string.chars.reverse.each_with_index do |i,j|
        number += ((16 ** j) * values[i])
      end
    end
    number
  end

  def values
    {
      "0" => 0,
      "1" => 1,
      "2" => 2,
      "3" => 3,
      "4" => 4,
      "5" => 5,
      "6" => 6,
      "7" => 7,
      "8" => 8,
      "9" => 9,
      "a" => 10,
      "b" => 11,
      "c" => 12,
      "d" => 13,
      "e" => 14,
      "f" => 15
    }
  end
end