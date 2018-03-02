class RunLengthEncoding
  def self.encode(input)
    similar_count = 1
    encoded = ""

    input.split('').each_with_index do |char, index|
      if has_lookahead?(input, index)
        similar_count += 1
      elsif similar_count > 1
        encoded << "#{similar_count}#{char}"
        similar_count = 1
      else
        encoded << char
      end
    end

    encoded
  end

  def self.decode(input)
    numbers_array = input.split(/\D/).select { |num| num.length > 0 }
    char_blocks = input.split(/\d/).select { |num| num.length > 0 }
    decoded = ""
    char_blocks.zip(numbers_array) do |left, right|
      left.split('').each_with_index do |item, index|
         if index == 0 && right
           decoded << (Array.new(right.to_i) { item }).join('')
         else
           decoded << item
         end
      end
    end

    decoded
  end

  private
  def self.has_lookahead?(input, index)
    (index >= input.length) ? nil : input[index] == input[index + 1]
  end

end
