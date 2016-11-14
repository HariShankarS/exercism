class BaseConverter

  def self.convert(input_base, digits, output_base)
    if output_base > 1 && input_base > 1
      num = 0
      a = []
      invalid = []
      array = digits.reverse
      array.each_with_index do |i,j|
        num += (input_base**j)*i
        invalid << true if i >= input_base
        a << 0 if i < 0 
      end
      res = []
      until num == 0 do
        res << num % output_base
        num = num / output_base
      end
    end

    if input_base <= 1 || output_base <= 1 || a == [0] || invalid.include?(true)
      nil	
    elsif digits.empty?
      res	
    elsif res.empty?
      result = 	[0]
    else
      result = res.reverse
    end	 
  end
  
end
