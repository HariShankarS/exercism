class Triplet

  attr_accessor :sum
  attr_accessor :product

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def sum
    @a + @b + @c
  end

  def product
    @a * @b * @c
  end

  def pythagorean?
    ( ( @a ** 2 ) + ( @b ** 2 ) ) == ( @c ** 2 )
  end

  def self.where(options)
    min = options[:min_factor] || 1
    max = options[:max_factor]
    sum = options[:sum]
    array = []
    (min..max).each do |c|
      (min..c).each do |b|
        (min..b).each do |a|
          unless sum.nil?
            array << [a,b,c] if ( ((a**2)+(b**2)) == (c**2) ) && ( (a + b + c) == sum )
          else
            array << [a,b,c] if ((a**2)+(b**2)) == (c**2)
          end
        end
      end
    end
    array
  end

end
class Array 

  def product
    inject(:*)
  end
end