class Grains

  def self.square input
    raise ArgumentError.new if !input.between?(1, 64)

    # given a square at position 'n', the number of grains
    # formula is shown below
    2 ** (input - 1)
  end

  def self.total
    (1..64).to_a.inject do |sum, num|
      sum + square(num)
    end
  end
end
