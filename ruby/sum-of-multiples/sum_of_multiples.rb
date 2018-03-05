class SumOfMultiples

    def initialize(*numbers)
        @numbers = numbers
    end

    def to(input)
        set = []
        # loop through numbers and find all multiples
        (1...input).to_a.each do |n|
            set.push(n) if @numbers.any? do | x | n % x == 0 end
        end
        # sum all values in set
        set.inject(0) do |sum, n|
            sum + n
        end
    end

end