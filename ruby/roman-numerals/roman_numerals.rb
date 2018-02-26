class Fixnum
<<<<<<< HEAD
  @@roman_converter = [
    {
      range: "1 - 10",
      lower: 'I',
      mid: 'V'
    },
    {
      range: "11 - 100",
      lower: 'X',
      mid: 'L'
    },
    {
      range: "101 - 1000",
      lower: 'C',
      mid: 'D'
    },
    {
      range: "1001 - n",
      lower: 'M'
    }
  ]

  def to_roman
    result = []
    self.to_s.split('').collect { |n| n.to_i }.reverse.each_with_index do |number, idx|

      mid = @@roman_converter[idx][:mid]
      lower = @@roman_converter[idx][:lower]
      next_lower = idx == 3 ? '' : @@roman_converter[idx][:lower] * 10

      if number < 4
        result << number.times { result << "#{lower}" }
      elsif number == 4
        result << "#{lower}#{mid}"
      elsif number == 5
        result << "#{mid}"
      elsif number < 9
        result <<  "#{mid}" + (number - 5).times { "#{lower}" }
      else
        result << "#{next_lower}"
      end
    end

    return result.join('')
  end
=======

  def to_roman
    self
  end

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
end
