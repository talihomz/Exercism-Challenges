class Prime

  def self.nth(n)
    raise ArgumentError.new if n == 0

    primes = [2]
    prime_test = primes.last + 1

    while n > primes.length
      primes << prime_test if primes.all? do |i| prime_test % i != 0 end
      prime_test += 1
    end

    return primes[n - 1]
  end

end
