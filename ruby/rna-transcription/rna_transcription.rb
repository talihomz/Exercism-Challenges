class Complement

  def self.of_dna input
    return '' if input.match(/^[CGTA]+$/) == nil
  end

end
