class Binary
  def self.to_decimal input

    # validation
    raise ArgumentError.new if !input.match(/^[01]+$/)

    result = 0;
    max = input.length - 1;

    input.reverse.split('').each_with_index do |item, index|
      digit = item.to_i
      modI = max - index
      result += digit * (2 ** (max - modI));
    end

    return result;
  end
end
