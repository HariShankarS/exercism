class PerfectNumber
  
  def self.classify(number)
    raise RuntimeError if number < 0 
    sum_of_factors = 0
    [*1...number].each do |i|
      sum_of_factors += i if (number % i) == 0
    end
    if sum_of_factors > number
      'abundant'
    elsif sum_of_factors < number
      'deficient'
    else
      'perfect'
    end	
  end
end

