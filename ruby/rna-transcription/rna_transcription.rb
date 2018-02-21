class Complement

  @@values = {
    "C" => "G",
    "G" => "C",
    "T" => "A",
    "A" => "U"
  }

  def self.of_dna input
    return '' if input.match(/^[CGTA]+$/) == nil

    output = ''
    input.split('').each do |x|
      output << @@values[x]
    end

    output
  end

end
