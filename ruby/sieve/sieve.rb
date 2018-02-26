class Sieve
  def initialize(input)
    @input = input
  end

  def primes
    result = []
    marked = []

    (2..@input).to_a.each do |num|
      next if marked.include?(num)

      (@input / num).times do |n|
        marked << (n + 1) * num
      end

      result << num
    end

    result
  end
end
