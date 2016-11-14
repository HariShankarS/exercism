class PhoneNumber

  def initialize(number)
    @number = number
  end

  def numeric?
    Float(self) != nil rescue false
  end

  def number
    @number.gsub!(/[^0-9a-z']/i, ' ')
    @number = @number.delete(' ')
    if @number.gsub(/\d\s?/, "").length != 0 || @number.length < 10 || (@number.length == 11 && @number[0] != "1") || @number.length > 11
      '0000000000'
    elsif @number.length == 11 && @number[0] == "1"
      @number[0] = ""
      @number
    else
      @number
    end	
  end

  def area_code
    @number[0..2]
  end

  def to_s
    if @number.length == 11
      @number[0] =""
    end
    "(#{@number[0..2]}) #{@number[3..5]}-#{@number[6..9]}" 
  end

end