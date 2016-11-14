class Luhn
  
  def initialize(number)
    @number = number
  end

  def addends
    digits = @number.to_s.reverse.chars
    result = []
    digits.each_with_index do|i,j|
      if j.odd?
        result << mapping(i.to_i)
      else
        result << i.to_i
      end
    end
    result.reverse.map(&:to_i)
  end

  def mapping(number)
    if ( number * 2 ) > 9
      ( number * 2 ) - 9
    else
      ( number * 2 )
    end
  end

  def checksum
    addends.inject(:+)
  end

  def valid?
    (checksum % 10) == 0 
  end

  def self.create(number)
    [*0..9].each do |i|
      return "#{number}#{i}".to_i if Luhn.new("#{number}#{i}".to_i).valid?
    end
  end

end