class Binary
  
  def initialize(binary)
    if binary.count('01') == binary.size
      @binary = binary
    else
      raise ArgumentError
    end
  end

  def to_decimal
    @binary = @binary.reverse.chars
    length = @binary.length
    value = 0
    for i in 0..length      
      value += @binary[i].to_i*(2**i) if i < length
    end 
    value 	
  end

# def to_decimal
#   @binary.to_i(2)
# end
end
