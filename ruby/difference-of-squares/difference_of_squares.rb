class Squares

  def square_of_sum
    sum = ((@number ** 2) + @number)/2
    sum ** 2
  end

  def sum_of_squares
    sum = (@number * (@number + 1) * ((2 * @number) + 1))/6
  end

  def difference
    @square_of_sum = ((((@number ** 2) + @number)/2) ** 2)
    @sum_of_squares = (@number * (@number + 1) * ((2 * @number) + 1)) / 6
    @difference = @square_of_sum - @sum_of_squares
  end

  def initialize(number)
    @number = number 
  end

end

module BookKeeping
  VERSION = 3
end