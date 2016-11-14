class SumOfMultiples

  def initialize(*args)
    @numbers = *args
  end

  def to(n)
    multiples = []
    @numbers.each do |number|
      for i in 0..(n/number)
        multiples << number * i
      end
    end
    multiples = multiples.uniq - [n]
    multiples.inject(:+) || 0
  end
end