class PrimeFactors

    def self.for(input)
        res = []
        divisor = 2
        current = input

        while current > 1
            if current % divisor == 0
                res.push(divisor)
                current = current / divisor
            else
                divisor += 1
            end
        end

        res
    end

end