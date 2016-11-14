class Prime
require "prime"

  def self.nth(n)
    raise ArgumentError if n == 0
    first_n_prime = Prime.first n
    first_n_prime[n-1] 
  end

end
