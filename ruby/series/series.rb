class Series
    def initialize input
        @input = input
    end

    def slices size
        raise ArgumentError.new if size > @input.length
        index = 0
        result = []
        while(index <= @input.length - size)
            result << @input[index,size] 
            index += 1
        end
        result
    end
end