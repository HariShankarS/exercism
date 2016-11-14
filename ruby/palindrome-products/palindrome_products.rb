class Palindromes
  
  def initialize(options)
    @max = options[:max_factor]
    @min = options[:min_factor] || 1
  end

  def generate
    $factors = {}
    [*@min..@max].each do |a|
      [*@min..@max].each do |b|
        if ((a*b).to_s == (a*b).to_s.reverse)
          if $factors.has_key?(a*b) 
            $factors[a*b] << [a,b].sort unless $factors[a*b].include?([a,b].sort)
          else
            $factors[a*b] = [[a,b]]
          end
        end
      end
    end
    $factors
  end

  def largest
    $factors.keys.max
  end

  def smallest
    $factors.keys.min
  end
  
end

class Fixnum

  def value
    self
  end

  def factors
    $factors[self]
  end
end