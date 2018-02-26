class Fixnum

  ROMAN_NUMERALS = {
    1 => { # length 1
      1 => 'I',
      4 => 'IV',
      5 => 'V',
      9 => 'IX'
    },
    2 => { # length 2
      1 => 'X',
      4 => 'XL',
      5 => 'L',
      9 => 'XC'
    },
    3 => { # length 3
      1 => 'C',
      4 => 'CD',
      5 => 'D',
      9 => 'CM'
    },
    4 => { # length 4
      1 => 'M',
      4 => '',
      5 => '',
      9 => ''
    }
  }

  def to_roman
    digit_array = self.to_s.split('').collect do |n| n.to_i end
    digit_hash = {}

    digit_array.each_with_index do |n, idx|
      digit_hash[digit_array.length - idx] = n
    end

    result = []

    digit_hash.each do |k, v|
      current_number = v

      until current_number == 0
        if current_number < 4
          result << ROMAN_NUMERALS[k][1]
          current_number -= 1
        elsif current_number == 4
          result << ROMAN_NUMERALS[k][4]
          current_number = 0
        elsif current_number == 5
          result << ROMAN_NUMERALS[k][5]
          current_number = 0
        elsif current_number < 9
          result << ROMAN_NUMERALS[k][5]
          current_number -= 5
        else
          result << ROMAN_NUMERALS[k][9]
          current_number = 0
        end
      end
    end

    return result.join('')
  end
end
