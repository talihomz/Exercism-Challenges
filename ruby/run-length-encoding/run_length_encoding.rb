class RunLengthEncoding
  def self.encode(input)
    similar_count = 1
    encoded = ""
    puts input

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
    input_remapped = []
    decoded = ""
    char_blocks.zip(numbers_array) do |left, right|
      input_remapped += right.split('')
      input_remapped << left if left
    end

    input_remapped.each_with_index do |item, index|
      if(item.match(/^[\d]+$/))
        decoded << (Array.new(item.to_i - 1) { input_remapped[index + 1] }).join('')
      else
        decoded << item
      end
    end

    decoded
  end

  private
  def self.has_lookahead?(input, index)
    (index >= input.length) ? nil : input[index] == input[index + 1]
  end

end
