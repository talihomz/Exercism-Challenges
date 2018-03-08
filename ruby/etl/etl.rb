class ETL
    def self.transform(input)
        res = {}
        input.each do |key, value|
            value.each do |item|
                res[item.downcase] = key
            end
        end
        res
    end
end