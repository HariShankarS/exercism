class Sieve

  def primes
    primes = []
    [*2..@num].each do |number|
      count = 0
      for i in 1..number
        count += 1 if (number % i) == 0
      end
      primes << number if count == 2
    end
    primes
  end

  def initialize(num)
    @num = num
  end
end



