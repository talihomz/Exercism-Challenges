class Sieve
  def initialize(input)
    @input = input
  end

  def primes
    result = []

    data_hash = Hash[(2..@input).to_a.collect { |number| [number, false] }]
    data_hash.each do |k,v|
      continue if v

      (@input / k).times do |number|
        puts data_hash
        puts "Index: #{(number + 1) * k}"
        # data_hash[(number + 1) * k] = true
      end

      result << k
    end

    result
  end
end
