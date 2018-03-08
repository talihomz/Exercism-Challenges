class Trinary
    def initialize(input)
        @input = input
    end

    def to_decimal

        return 0 unless @input.match(/^[\d]+$/)
        return 0 unless @input.match(/^[0-3]+$/)
        return 0 if @input.match(/\n/)
        
        result = 0;
        max = @input.length - 1;

        @input.reverse.split('').each_with_index do |item, index|
            digit = item.to_i
            modI = max - index
            result += digit * (3 ** (max - modI));
        end

        return result;
    end
end