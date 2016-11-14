class Triangle

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [@side1,@side2,@side3]
  end

  def kind
    if (@sides.min <= 0 ) || @sides.inject(:+) - @sides.max < @sides.max
      raise TriangleError
    end
    case @sides.uniq.length
    when 1
      :equilateral
    when 2
      :isosceles
    else
      :scalene
    end
  end

  def triangle_rule
    
  end
end

class TriangleError < ArgumentError
end