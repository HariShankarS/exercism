class PrimeFactors

  def self.for(number)
    prime_factors = []
    divisor = 2
    until number < 2
      while number.modulo(divisor) == 0
        prime_factors << divisor
        number /= divisor
      end
      divisor += 1
    end
    prime_factors
  end

end