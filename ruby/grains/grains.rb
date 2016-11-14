class Grains

  def self.square(number)
    2**(number-1)
  end

  def self.total
    total_sqaures = 64
    ((2 ** total_sqaures) - 1)
  end	

end	