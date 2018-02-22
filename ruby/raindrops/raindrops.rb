class Raindrops

  def self.convert(n)
    output = ''
    divisor = 1
    mapping = {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong'
    }

    mapping.each do |k, v|
      output << v if n % k == 0
    end

    output == '' ? n.to_s : output
  end

end
