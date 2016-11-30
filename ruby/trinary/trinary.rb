class Trinary

  def initialize(number)
    if number.count('012') == number.size
      @number = number
    else
      @number = '0'
    end
  end

  def to_decimal
    @trinary = @number.reverse.chars
    length = @trinary.length
    value = 0
    for i in 0..length      
      value += ((@trinary[i].to_i) * (3**i)) if i < length
    end 
    value 	
  end

end

module BookKeeping
  VERSION = 1
end