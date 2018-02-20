class Hamming
  def self.compute(strandA, strandB)

    # base conditions
    0 if strandA.length == 0

    raise new ArgumentError if strandA.length != strandB.length

    distance = 0

    # hamming logic
    strandA.split('').each_with_index do |val, idx|
      distance += 1 if val != strandB[idx]
    end

    return distance
  end
end
